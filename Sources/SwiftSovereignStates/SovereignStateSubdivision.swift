//
//  SovereignStateSubdivision.swift
//  
//
//  Created by Evan Anderson on 6/16/22.
//

import Foundation

public enum SovereignStateSubdivisions {
    public static var all:[any SovereignStateSubdivision] = {
        return Country.allCases.compactMap({ $0.getSubdivisions() }).flatMap({ $0 })
    }()
    
    public static func getAllMentioned(_ string: String, cache: Bool = true) -> [any SovereignStateSubdivision]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateSubdivision] = SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] {
            return cached
        }
        let subdivisions:[any SovereignStateSubdivision] = all.filter({ $0.isMentioned(in: string) })
        if cache {
            SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    public static func getAllMentioned(_ string: String, country: Country, cache: Bool = true) -> [any SovereignStateSubdivision]? {
        guard var subdivisions:[any SovereignStateSubdivision] = country.getSubdivisions() else { return nil }
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateSubdivision] = SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] {
            return cached
        }
        subdivisions.removeAll(where: { !$0.isMentioned(in: string) })
        if cache {
            SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    
    public static func valueOf(_ string: String, cache: Bool = true) -> [any SovereignStateSubdivision]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateSubdivision] = SwiftSovereignStateCacheSubdivisions.valueOfAll[stringLowercase] {
            return cached.isEmpty ? nil : cached
        }
        let subdivisions:[any SovereignStateSubdivision] = all.filter({ $0.isMentioned(in: string, exact: true) })
        if cache {
            SwiftSovereignStateCacheSubdivisions.valueOfAll[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    public static func valueOf(_ string: String, country: Country, cache: Bool = true) -> (any SovereignStateSubdivision)? {
        guard var subdivisions:[any SovereignStateSubdivision] = country.getSubdivisions() else { return nil }
        let stringLowercase:String = string.lowercased()
        if let subdivision:Any? = SwiftSovereignStateCacheSubdivisions.valueOf[stringLowercase] {
            return subdivision as? (any SovereignStateSubdivision)
        }
        subdivisions.removeAll(where: { !$0.isMentioned(in: string, exact: true) })
        let subdivision:(any SovereignStateSubdivision)? = subdivisions.first
        if cache {
            SwiftSovereignStateCacheSubdivisions.valueOf[stringLowercase] = subdivision
        }
        return subdivision
    }
    public static func valueOfCacheID(_ cacheID: String, cache: Bool = true) -> (any SovereignStateSubdivision)? {
        if let subdivision:any SovereignStateSubdivision = SwiftSovereignStateCacheSubdivisions.valueOfCacheID[cacheID] {
            return subdivision
        }
        guard let subdivision:any SovereignStateSubdivision = all.first(where: { cacheID.elementsEqual($0.getCacheID()) }) else { return nil }
        if cache {
            SwiftSovereignStateCacheSubdivisions.valueOfCacheID[cacheID] = subdivision
        }
        return subdivision
    }
    // parallel
    public static func getAllMentionedParallel(_ string: String, cache: Bool = true) async -> [any SovereignStateSubdivision]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateSubdivision] = SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] {
            return cached
        }
        let subdivisions:[any SovereignStateSubdivision] = await all.filterAsync({ $0.isMentioned(in: string) })
        if cache {
            SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    public static func getAllMentionedParallel(_ string: String, country: Country, cache: Bool = true) async -> [any SovereignStateSubdivision]? {
        guard var subdivisions:[any SovereignStateSubdivision] = country.getSubdivisions() else { return nil }
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateSubdivision] = SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] {
            return cached
        }
        subdivisions = await subdivisions.filterAsync({ $0.isMentioned(in: string) })
        if cache {
            SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    
    public static func valueOfParallel(_ string: String, cache: Bool = true) async -> [any SovereignStateSubdivision]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateSubdivision] = SwiftSovereignStateCacheSubdivisions.valueOfAll[stringLowercase] {
            return cached.isEmpty ? nil : cached
        }
        let subdivisions:[any SovereignStateSubdivision] = await all.filterAsync({ $0.isMentioned(in: string, exact: true) })
        if cache {
            SwiftSovereignStateCacheSubdivisions.valueOfAll[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    public static func valueOfParallel(_ string: String, country: Country, cache: Bool = true) async -> (any SovereignStateSubdivision)? {
        guard var subdivisions:[any SovereignStateSubdivision] = country.getSubdivisions() else { return nil }
        let stringLowercase:String = string.lowercased()
        if let subdivision:Any? = SwiftSovereignStateCacheSubdivisions.valueOf[stringLowercase] {
            return subdivision as? (any SovereignStateSubdivision)
        }
        subdivisions = await subdivisions.filterAsync({ $0.isMentioned(in: string, exact: true) })
        let subdivision:(any SovereignStateSubdivision)? = subdivisions.first
        if cache {
            SwiftSovereignStateCacheSubdivisions.valueOf[stringLowercase] = subdivision
        }
        return subdivision
    }
}

public extension Country {
    func valueOfSubdivision(_ string: String?) -> (any SovereignStateSubdivision)? {
        guard let string:String = string else { return nil }
        return SovereignStateSubdivisions.valueOf(string, country: self)
    }
    func valueOfSubdivisionIdentifier(_ string: String) -> (any SovereignStateSubdivision)? {
        return getSubdivisions()?.first(where: { string.elementsEqual($0.getIdentifier()) })
    }
}

public protocol SovereignStateSubdivision : SovereignState { // https://en.wikipedia.org/wiki/List_of_first-level_administrative_divisions_by_country
    /// The country this subdivision's administrative borders are claimed by.
    func getCountry() -> Country
    func getType() -> SovereignStateSubdivisionType
    func getTypeSuffix() -> String
    
    /// The neighboring subdivisions, in relation the its administrative borders.
    func getNeighbors() -> [any SovereignStateSubdivision]?
    /// The level-3 administrative units this subdivision contains.
    func getCities() -> [any SovereignStateCity]?
}

public extension SovereignStateSubdivision {
    init?(_ description: String) {
        self = (SovereignStateSubdivisions.valueOfCacheID(description) ?? SubdivisionsUnitedStates.minnesota) as! Self
    }
    
    func getCacheID() -> String {
        return getCountry().getIdentifier() + "_" + getIdentifier()
    }
    func getISOAlpha2() -> String? {
        return nil
    }
    func getISOAlpha3() -> String? {
        return nil
    }
    
    func getTypeSuffix() -> String {
        return getType().getSingularName().replacingOccurrences(of: " ", with: "_")
    }
    
    func getNeighbors() -> [any SovereignStateSubdivision]? {
        return nil
    }
    func getCities() -> [any SovereignStateCity]? {
        return nil
    }
}

public struct SovereignStateSubdivisionWrapper : SovereignStateSubdivision, SovereignRegionWrapper {
    public let subdivision:any SovereignStateSubdivision
    
    public init(_ subdivision: any SovereignStateSubdivision) {
        self.subdivision = subdivision
    }
    
    public init(from decoder: Decoder) throws {
        let container:SingleValueDecodingContainer = try decoder.singleValueContainer()
        let identifier:String = try container.decode(String.self)
        subdivision = SovereignStateSubdivisions.valueOfCacheID(identifier) ?? SubdivisionsUnitedStates.minnesota
    }
    
    public func getIdentifier() -> String {
        return subdivision.getIdentifier()
    }
    public func getCacheID() -> String {
        return subdivision.getCacheID()
    }
    public func getKeywords() -> [String] {
        return subdivision.getKeywords()
    }
    public func getAdditionalKeywords() -> [String]? {
        return subdivision.getAdditionalKeywords()
    }
    public func isMentioned(in string: String, exact: Bool) -> Bool {
        return subdivision.isMentioned(in: string, exact: exact)
    }
    
    public func getShortName() -> String {
        return subdivision.getShortName()
    }
    public func getShortNameDecimalSeparatorIndex() -> Int? {
        return subdivision.getShortNameDecimalSeparatorIndex()
    }
    public func getRealName() -> String? {
        return subdivision.getRealName()
    }
    public func getConditionalName() -> String? {
        return subdivision.getConditionalName()
    }
    public func getOfficialNames() -> [String]? {
        return subdivision.getOfficialNames()
    }
    public func getAliases() -> [String]? {
        return subdivision.getAliases()
    }
    
    public func getGovernmentWebsite() -> String? {
        return subdivision.getGovernmentWebsite()
    }
    
    public func getFlagURL() -> String? {
        return subdivision.getFlagURL()
    }
    public func getFlagURLWikipediaSVGID() -> String? {
        return subdivision.getFlagURLWikipediaSVGID()
    }
    public func getWikipediaURL() -> String {
        return subdivision.getWikipediaURL()
    }
    public func getWikipediaURLPrefix() -> String? {
        return subdivision.getWikipediaURLPrefix()
    }
    public func getWikipediaURLSuffix() -> String? {
        return subdivision.getWikipediaURLSuffix()
    }
    
    public func getTimeZones() -> [SovereignStateTimeZone]? {
        return subdivision.getTimeZones()
    }
    public func getTemperateZones() -> [TemperateZone]? {
        return subdivision.getTemperateZones()
    }
    
    public func getISOAlpha2() -> String? {
        return subdivision.getISOAlpha2()
    }
    public func getISOAlpha3() -> String? {
        return subdivision.getISOAlpha3()
    }
    
    public func getCountry() -> Country {
        return subdivision.getCountry()
    }
    public func getType() -> SovereignStateSubdivisionType {
        return subdivision.getType()
    }
    public func getTypeSuffix() -> String {
        return subdivision.getTypeSuffix()
    }
    
    public func getNeighbors() -> [any SovereignStateSubdivision]? {
        return subdivision.getNeighbors()
    }
    public func getCities() -> [any SovereignStateCity]? {
        return subdivision.getCities()
    }
}
