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
        let shortName:String = getShortName()
        var keywords:[String] = [getCacheID(), rawValue, shortName]
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
        return keywords
    }
    func getAdditionalKeywords() -> [String]? {
        return nil
    }
    internal func getKeywordTerms() -> [ContentTerm] {
        let id:String = getCacheID()
        if let terms:[ContentTerm] = SwiftSovereignStateCacheSubdivision.keywordTerms[id] {
            return terms
        }
        let terms:[ContentTerm] = getKeywords().map({ ContentTerm($0) })
        SwiftSovereignStateCacheSubdivision.keywordTerms[id] = terms
        return terms
    }
    func isMentioned(in string: String, exact: Bool = false) -> Bool {
        let terms:[ContentTerm] = getKeywordTerms()
        return exact ? ContentTerm.doesEqual(string: string, values: terms) : ContentTerm.doesSatisfy(string: string, values: terms)
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
