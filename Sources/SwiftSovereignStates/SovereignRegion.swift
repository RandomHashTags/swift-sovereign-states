//
//  SovereignRegion.swift
//  
//
//  Created by Evan Anderson on 9/22/22.
//

import Foundation

public protocol SovereignRegion { // https://en.wikipedia.org/wiki/Category:Administrative_divisions_by_level_and_country
    func getIdentifier() -> String
    func getCacheID() -> String
    func getKeywords() -> [String]
    func getAdditionalKeywords() -> [String]?
    func isMentioned(in string: String, exact: Bool) -> Bool
    
    func getShortName() -> String
    func getShortNameDecimalSeparatorIndex() -> Int?
    func getRealName() -> String?
    func getConditionalName() -> String?
    func getOfficialNames() -> [String]?
    func getAliases() -> [String]?
    
    func getGovernmentWebsite() -> String?
    
    func getFlagURL() -> String?
    func getFlagURLWikipediaSVGID() -> String?
    func getWikipediaURL() -> String
    func getWikipediaURLPrefix() -> String?
    func getWikipediaURLSuffix() -> String?
    
    func getTimeZones() -> [SovereignStateTimeZone]?
}

public extension SovereignRegion where Self : RawRepresentable, RawValue == String {
    func getIdentifier() -> String {
        return rawValue
    }
}
public extension SovereignRegion {
    func isEqual(_ sovereignRegion: any SovereignRegion) -> Bool {
        return getCacheID().elementsEqual(sovereignRegion.getCacheID())
    }
    
    func getKeywords() -> [String] {
        var keywords:[String] = [getRealName() ?? getShortName()]
        if let conditionalName:String = getConditionalName() {
            keywords.append(conditionalName)
        }
        if let officialNames:[String] = getOfficialNames() {
            keywords.append(contentsOf: officialNames)
        }
        if let aliases:[String] = getAliases() {
            keywords.append(contentsOf: aliases)
        }
        if let additional:[String] = getAdditionalKeywords() {
            keywords.append(contentsOf: additional)
        }
        return keywords
    }
    func getKeywordsRegex() -> String {
        let id:String = getCacheID()
        if let cached:String = SwiftSovereignStateCacheSubdivisions.keywordsRegex[id] {
            return cached
        }
        let regex:String = "(" + getKeywords().joined(separator: "|") + ")"
        SwiftSovereignStateCacheSubdivisions.keywordsRegex[id] = regex
        return regex
    }
    func getAdditionalKeywords() -> [String]? {
        return nil
    }
    
    func isMentioned(in string: String, exact: Bool = false) -> Bool {
        let valuesRegex:String = getKeywordsRegex()
        return exact ? SovereignRegions.doesEqual(string: string, valuesRegex: valuesRegex) : SovereignRegions.doesSatisfy(string: string, valuesRegex: valuesRegex)
    }
    
    func getOfficialNames() -> [String]? {
        return nil
    }
    
    func getAliases() -> [String]? {
        return nil
    }
    
    func getShortName() -> String {
        let identifier:String = getIdentifier()
        let decimalSeparatorIndex:Int? = identifier.starts(with: "st_") ? 0 : getShortNameDecimalSeparatorIndex()
        return SovereignRegions.toCorrectCapitalization(input: identifier, decimalSeparatorIndex: decimalSeparatorIndex)
    }
    func getShortNameDecimalSeparatorIndex() -> Int? {
        return nil
    }
    
    func getRealName() -> String? {
        return nil
    }
    func getConditionalName() -> String? {
        return nil
    }
    
    func getGovernmentWebsite() -> String? {
        return nil
    }
    
    func getFlagURL() -> String? {
        guard let id:String = getFlagURLWikipediaSVGID() else { return nil }
        let idLowercase:String = id.lowercased()
        let values:[String] = id.components(separatedBy: "/")
        let type:String = id.starts(with: "en") ? "en" : "commons"
        let hasExtension:Bool = idLowercase.hasSuffix(".png") || idLowercase.hasSuffix(".jpg") || idLowercase.hasSuffix(".gif")
        return "https://upload.wikimedia.org/wikipedia/" + type + "/thumb/" + urlEncoded(id.replacingOccurrences(of: "en/", with: "") + (hasExtension ? "" : ".svg") + "/%quality%px-" + values[values.count-1].description + (hasExtension ? "" : ".svg.png"))
    }
    func getFlagURLWikipediaSVGID() -> String? {
        return nil
    }
    
    func getWikipediaURL() -> String {
        let name:String = (getConditionalName() ?? getRealName() ?? getShortName()).replacingOccurrences(of: " ", with: "_")
        let prefix:String = getWikipediaURLPrefix() ?? ""
        var customSuffix:String = getWikipediaURLSuffix() ?? ""
        if customSuffix.starts(with: "_") || customSuffix.starts(with: " ") {
            customSuffix = customSuffix.suffix(customSuffix.count-1).description
        }
        let hasSuffix:Bool = !customSuffix.isEmpty
        return "https://en.wikipedia.org/wiki/" + urlEncoded(prefix + name + (hasSuffix ? "_" + customSuffix : ""))
    }
    func getWikipediaURLPrefix() -> String? {
        return nil
    }
    func getWikipediaURLSuffix() -> String? {
        return nil
    }
    
    func getTimeZones() -> [SovereignStateTimeZone]? {
        return nil
    }
    
    private func urlEncoded(_ string: String) -> String {
        return string.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? string
    }
}

internal extension Sequence {
    func filterAsync(_ transform: @escaping (Element) -> Bool) async -> [Element] {
        var values:[Element] = [Element]()
        await withTaskGroup(of: Element?.self, body: { group in
            for element in self {
                group.addTask {
                    return transform(element) ? element : nil
                }
            }
            for await value in group {
                if let value:Element = value {
                    values.append(value)
                }
            }
        })
        return values
    }
}
internal enum SovereignRegions {
    private static var excludedWords:[String] = ["and", "the", "da", "of", "del", "de", "la", "al", "on"]
    
    fileprivate static func toCorrectCapitalization(input: String, decimalSeparatorIndex: Int?) -> String {
        var values:[String] = input.components(separatedBy: "_")
        if let decimalSeparatorIndex:Int = decimalSeparatorIndex, values.count > decimalSeparatorIndex {
            values[decimalSeparatorIndex] = values[decimalSeparatorIndex] + "."
        }
        return values.map({
            let value:String = $0
            guard !excludedWords.contains(value) else { return value }
            return value.first!.uppercased() + value.suffix(value.count-1)
        }).joined(separator: " ")
    }
    
    static func doesEqual(string: String, valuesRegex: String) -> Bool {
        return doesContain(string: string, regex: valuesRegex)
    }
    static func doesSatisfy(string: String, valuesRegex: String) -> Bool {
        return doesContain(string: string, regex: prefixRegex + valuesRegex + suffixRegex)
    }
    private static let prefixRegex:String = {
        let string:String = [
            " ",
            "-", "–",
            "\\(",
            "/",
            "\"",
            "^"
        ].joined(separator: "|")
        return "(" + string + ")"
    }()
    private static let suffixRegex:String = {
        let string:String = [
            " ",
            "\\.", "\\?", "\\!",
            ",",
            ";", ":",
            "-", "–",
            "'", "\"",
            "\\)",
            "/"
        ].joined(separator: "|")
        return "(" + string + ")"
    }()
    private static func doesContain(string: String, regex: String) -> Bool {
        return string.range(of: regex, options: .regularExpression) != nil
    }
}
