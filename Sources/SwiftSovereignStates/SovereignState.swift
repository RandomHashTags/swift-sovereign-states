//
//  SovereignState.swift
//  
//
//  Created by Evan Anderson on 6/13/22.
//

import Foundation

public protocol SovereignState : RawRepresentable, CaseIterable, Hashable where RawValue == String {
    func getCacheID() -> String
    func getKeywords() -> [String]
    func getAdditionalKeywords() -> [String]?
    func isMentioned(in string: String, exact: Bool) -> Bool
    func getShortName() -> String
    func getRealName() -> String?
    func getConditionalName() -> String?
    func getOfficialNames() -> [String]?
    func getAliases() -> [String]?
    func getISOAlpha2() -> String?
    func getISOAlpha3() -> String?
    
    func getGovernmentWebsite() -> String?
    
    func getFlagURL() -> String?
    func getFlagURLWikipediaSVGID() -> String?
    func getWikipediaURL() -> String
    
    func getTimeZones() -> [SovereignStateTimeZone]?
}

public extension SovereignState {
    private static func toCorrectCapitalization(input: String, excludedWords: [String]?) -> String {
        guard !input.isEmpty else { return input }
        let values:[String] = input.lowercased().components(separatedBy: "_"), excluded:[String] = excludedWords?.map({ $0.lowercased() }) ?? [String]()
        return values.compactMap({
            let value:String = $0
            guard !value.isEmpty else { return nil }
            guard !excluded.contains(value) else { return value }
            return value.prefix(1).uppercased() + value.suffix(value.count-1)
        }).joined(separator: " ")
    }
    
    #if swift(<5.7)
    func isEqual<T: SovereignState>(_ sovereignState: T) -> Bool {
        return getCacheID().elementsEqual(sovereignState.getCacheID())
    }
    #else
    func isEqual(_ sovereignState: any SovereignState) -> Bool {
        return getCacheID().elementsEqual(sovereignState.getCacheID())
    }
    #endif
    func hash(into hasher: inout Hasher) {
        hasher.combine(getCacheID())
    }
    
    func getKeywords() -> [String] {
        let id:String = getCacheID()
        if let cached:[String] = SwiftSovereignStateCacheSubdivision.keywords[id] {
            return cached
        }
        var keywords:[String] = [rawValue, getShortName()]
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
        if let isoAlpha2:String = getISOAlpha2() {
            keywords.append(isoAlpha2)
        }
        if let isoAlpha3:String = getISOAlpha3() {
            keywords.append(isoAlpha3)
        }
        if let additional:[String] = getAdditionalKeywords() {
            keywords.append(contentsOf: additional)
        }
        SwiftSovereignStateCacheSubdivision.keywords[id] = keywords
        return keywords
    }
    func getAdditionalKeywords() -> [String]? {
        return nil
    }
    func isMentioned(in string: String, exact: Bool = false) -> Bool {
        let values:[String] = getKeywords()
        return exact ? SovereignStates.doesEqual(string: string, values: values) : SovereignStates.doesSatisfy(string: string, values: values)
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
        let string:String = Self.toCorrectCapitalization(input: "\(self)", excludedWords: ["and", "the", "da", "of", "del", "de", "la", "al"])
        SwiftSovereignStateCache.actualShortNames[id] = string
        return string
    }
    
    func getRealName() -> String? {
        return nil
    }
    func getConditionalName() -> String? {
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
    
    func getTimeZones() -> [SovereignStateTimeZone]? {
        return nil
    }
}

private enum SovereignStates {
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
