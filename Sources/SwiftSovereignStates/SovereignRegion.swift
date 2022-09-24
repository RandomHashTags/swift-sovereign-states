//
//  SovereignRegion.swift
//  
//
//  Created by Evan Anderson on 9/22/22.
//

import Foundation

public protocol SovereignRegion {
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
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.getCacheID().elementsEqual(rhs.getCacheID())
    }
    
    func isEqual(_ sovereignRegion: any SovereignRegion) -> Bool {
        return getCacheID().elementsEqual(sovereignRegion.getCacheID())
    }
    
    func getKeywords() -> [String] {
        let id:String = getCacheID()
        if let cached:[String] = SwiftSovereignStateCacheSubdivisions.keywords[id] {
            return cached
        }
        var keywords:[String] = [getIdentifier(), getCacheID(), getShortName()]
        if let realName:String = getRealName() {
            keywords.append(realName)
        }
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
        SwiftSovereignStateCacheSubdivisions.keywords[id] = keywords
        return keywords
    }
    func getAdditionalKeywords() -> [String]? {
        return nil
    }
    
    func isMentioned(in string: String, exact: Bool = false) -> Bool {
        let values:[String] = getKeywords()
        return exact ? SovereignRegions.doesEqual(string: string, values: values) : SovereignRegions.doesSatisfy(string: string, values: values)
    }
    
    func getOfficialNames() -> [String]? {
        return nil
    }
    
    func getAliases() -> [String]? {
        return nil
    }
    
    func getShortName() -> String {
        let id:String = getCacheID()
        if let shortName:String = SwiftSovereignStateCache.actualShortNames[id] {
            return shortName
        }
        let identifier:String = getIdentifier()
        let decimalSeparatorIndex:Int? = identifier.starts(with: "st_") ? 0 : getShortNameDecimalSeparatorIndex()
        let string:String = SovereignRegions.toCorrectCapitalization(input: identifier, decimalSeparatorIndex: decimalSeparatorIndex, excludedWords: ["and", "the", "da", "of", "del", "de", "la", "al", "on"])
        SwiftSovereignStateCache.actualShortNames[id] = string
        return string
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
        return "https://upload.wikimedia.org/wikipedia/" + type + "/thumb/" + id.replacingOccurrences(of: "en/", with: "") + (hasExtension ? "" : ".svg") + "/%quality%px-" + values[values.count-1].description + (hasExtension ? "" : ".svg.png")
    }
    func getFlagURLWikipediaSVGID() -> String? {
        return nil
    }
    
    func getWikipediaURL() -> String {
        let conditionalName:String = getConditionalName() ?? getRealName() ?? getShortName()
        let prefix:String = getWikipediaURLPrefix() ?? ""
        var customSuffix:String = getWikipediaURLSuffix() ?? ""
        if customSuffix.starts(with: "_") || customSuffix.starts(with: " ") {
            customSuffix = customSuffix.suffix(customSuffix.count-1).description
        }
        let hasSuffix:Bool = !customSuffix.isEmpty
        return "https://en.wikipedia.org/wiki/" + prefix + conditionalName.replacingOccurrences(of: " ", with: "_") + (hasSuffix ? "_" + customSuffix : "")
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
}

private enum SovereignRegions {
    fileprivate static func toCorrectCapitalization(input: String, decimalSeparatorIndex: Int?, excludedWords: [String]?) -> String {
        guard !input.isEmpty else { return input }
        var values:[String] = input.lowercased().components(separatedBy: "_")
        if let decimalSeparatorIndex:Int = decimalSeparatorIndex, values.count > decimalSeparatorIndex {
            values[decimalSeparatorIndex] = values[decimalSeparatorIndex] + "."
        }
        let excluded:[String] = excludedWords?.map({ $0.lowercased() }) ?? [String]()
        return values.compactMap({
            let value:String = $0
            guard !value.isEmpty else { return nil }
            guard !excluded.contains(value) else { return value }
            return value.prefix(1).uppercased() + value.suffix(value.count-1)
        }).joined(separator: " ")
    }
    
    static func doesEqual(string: String, values: [String]) -> Bool {
        return values.first(where: { $0.elementsEqual(string) }) != nil
    }
    static func doesSatisfy(string: String, values: [String]) -> Bool {
        let regex:String = "(" + values.joined(separator: "|") + ")" + suffixRegex
        return doesContain(string: string, regex: prefixRegex + regex) || doesContain(string: string, regex: "^" + regex)
    }
    private static let prefixRegex:String = {
        let string:String = [
            " ",
            "-", "–",
            "\\(",
            "/",
            "\""
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
