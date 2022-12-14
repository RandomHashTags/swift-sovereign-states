//
//  SovereignStateCity.swift
//
//
//  Created by Evan Anderson on 7/19/22.
//

import Foundation

public enum SovereignStateCities {
    public static var all:[any SovereignStateCity] = {
        return SovereignStateSubdivisions.all.compactMap({ $0.getCities() }).flatMap({ $0 })
    }()
    
    public static func getAllMentioned(_ string: String, cache: Bool = true, ignoreCase: Bool = false) -> [any SovereignStateCity]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateCity] = SwiftSovereignStateCacheCities.mentionedAll[stringLowercase] {
            return cached.isEmpty ? nil : cached
        }
        let cities:[any SovereignStateCity] = all.filter({ $0.isMentioned(in: string, exact: false, ignoreCase: ignoreCase) })
        if cache {
            SwiftSovereignStateCacheCities.mentionedAll[stringLowercase] = cities
        }
        return cities.isEmpty ? nil : cities
    }
    public static func getAllMentioned(_ string: String, subdivision: any SovereignStateSubdivision, cache: Bool = true, ignoreCase: Bool = false) -> [any SovereignStateCity]? {
        guard var cities:[any SovereignStateCity] = subdivision.getCities() else { return nil }
        let id:String = subdivision.getCacheID() + string.lowercased()
        if let cached:[any SovereignStateCity] = SwiftSovereignStateCacheCities.mentionedSubdivision[id] {
            return cached.isEmpty ? nil : cached
        }
        cities.removeAll(where: { !$0.isMentioned(in: string, exact: false, ignoreCase: ignoreCase) })
        if cache {
            SwiftSovereignStateCacheCities.mentionedSubdivision[id] = cities
        }
        return cities.isEmpty ? nil : cities
    }

    public static func valueOf(_ string: String, cache: Bool = true, ignoreCase: Bool) -> [any SovereignStateCity]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateCity] = SwiftSovereignStateCacheCities.valueOfAll[stringLowercase] {
            return cached.isEmpty ? nil : cached
        }
        let cities:[any SovereignStateCity] = all.filter({ $0.isMentioned(in: string, exact: true, ignoreCase: ignoreCase) })
        if cache {
            SwiftSovereignStateCacheCities.valueOfAll[stringLowercase] = cities
        }
        return cities.isEmpty ? nil : cities
    }
    public static func valueOf(_ string: String, subdivision: any SovereignStateSubdivision, cache: Bool = true, ignoreCase: Bool = false) -> [any SovereignStateCity]? {
        guard var cities:[any SovereignStateCity] = subdivision.getCities() else { return nil }
        let stringLowercase:String = string.lowercased()
        if let cities:[any SovereignStateCity] = SwiftSovereignStateCacheCities.valueOf[stringLowercase] {
            return cities.isEmpty ? nil : cities
        }
        cities.removeAll(where: { !$0.isMentioned(in: string, exact: true, ignoreCase: false) })
        if cache {
            SwiftSovereignStateCacheCities.valueOf[stringLowercase] = cities
        }
        return cities.isEmpty ? nil : cities
    }
    public static func valueOfCacheID(_ cacheID: String, cache: Bool = true) -> (any SovereignStateCity)? {
        if let city:any SovereignStateCity = SwiftSovereignStateCacheCities.valueOfCacheID[cacheID] {
            return city
        }
        guard let city:any SovereignStateCity = all.first(where: { cacheID.elementsEqual($0.getCacheID()) }) else { return nil }
        if cache {
            SwiftSovereignStateCacheCities.valueOfCacheID[cacheID] = city
        }
        return city
    }
    // parallel
    public static func getAllMentionedParallel(_ string: String, cache: Bool = true, ignoreCase: Bool = false) async -> [any SovereignStateCity]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateCity] = SwiftSovereignStateCacheCities.mentionedAll[stringLowercase] {
            return cached.isEmpty ? nil : cached
        }
        let cities:[any SovereignStateCity] = await all.filterAsync({ $0.isMentioned(in: string, exact: false, ignoreCase: ignoreCase) })
        if cache {
            SwiftSovereignStateCacheCities.mentionedAll[stringLowercase] = cities
        }
        return cities.isEmpty ? nil : cities
    }
    public static func getAllMentionedParallel(_ string: String, subdivision: any SovereignStateSubdivision, cache: Bool = true, ignoreCase: Bool = false) async -> [any SovereignStateCity]? {
        guard var cities:[any SovereignStateCity] = subdivision.getCities() else { return nil }
        let id:String = subdivision.getCacheID() + string.lowercased()
        if let cached:[any SovereignStateCity] = SwiftSovereignStateCacheCities.mentionedSubdivision[id] {
            return cached.isEmpty ? nil : cached
        }
        cities = await cities.filterAsync({ $0.isMentioned(in: string, exact: false, ignoreCase: ignoreCase) })
        if cache {
            SwiftSovereignStateCacheCities.mentionedSubdivision[id] = cities
        }
        return cities.isEmpty ? nil : cities
    }

    public static func valueOfParallel(_ string: String, cache: Bool = true, ignoreCase: Bool) async -> [any SovereignStateCity]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateCity] = SwiftSovereignStateCacheCities.valueOfAll[stringLowercase] {
            return cached.isEmpty ? nil : cached
        }
        let cities:[any SovereignStateCity] = await all.filterAsync({ $0.isMentioned(in: string, exact: true, ignoreCase: ignoreCase) })
        if cache {
            SwiftSovereignStateCacheCities.valueOfAll[stringLowercase] = cities
        }
        return cities.isEmpty ? nil : cities
    }
    public static func valueOfParallel(_ string: String, subdivision: any SovereignStateSubdivision, cache: Bool = true, ignoreCase: Bool = false) async -> [any SovereignStateCity]? {
        guard var cities:[any SovereignStateCity] = subdivision.getCities() else { return nil }
        let stringLowercase:String = string.lowercased()
        if let cities:[any SovereignStateCity] = SwiftSovereignStateCacheCities.valueOf[stringLowercase] {
            return cities.isEmpty ? nil : cities
        }
        cities = await cities.filterAsync({ $0.isMentioned(in: string, exact: true, ignoreCase: ignoreCase) })
        if cache {
            SwiftSovereignStateCacheCities.valueOf[stringLowercase] = cities
        }
        return cities.isEmpty ? nil : cities
    }
}

public protocol SovereignStateCity : SovereignRegion {
    /// The subdivision that this city's administrative borders are located in.
    func getSubdivision() -> any SovereignStateSubdivision
    func getDefaultType() -> SovereignStateCityType
    func getType() -> SovereignStateCityType?
    /// Whether or not this city is the capital in relation to its subdivision (``getSubdivision()``).
    func isCapital() -> Bool
}

public extension SovereignStateCity {
    init?(_ description: String) {
        guard let city:any SovereignStateCity = SovereignStateCities.valueOfCacheID(description), city is Self else { return nil }
        self = city as! Self
    }
    
    func getCacheID() -> String {
        return getSubdivision().getCacheID() + "_" + getIdentifier()
    }
    func getCurrencies() -> [Currency] {
        return getSubdivision().getCurrencies()
    }
    
    func getDefaultType() -> SovereignStateCityType {
        return SovereignStateCityType.city
    }
    func getType() -> SovereignStateCityType? {
        return nil
    }
    
    func isCapital() -> Bool {
        return false
    }
    
    internal func getDefaultURLSuffix() -> String {
        let subdivision:any SovereignStateSubdivision = getSubdivision()
        return ",_" + (subdivision.getRealName() ?? subdivision.getShortName()).replacingOccurrences(of: " ", with: "_")
    }
    func getWikipediaURLSuffix() -> String? {
        return getDefaultURLSuffix()
    }
    
    func wrapped() -> SovereignStateCityWrapper {
        return SovereignStateCityWrapper(self)
    }
}

public extension SovereignStateSubdivision {
    func valueOfCity(_ string: String?) -> [any SovereignStateCity]? {
        guard let string:String = string else { return nil }
        return SovereignStateCities.valueOf(string, subdivision: self)
    }
    func valueOfCityIdentifier(_ string: String) -> (any SovereignStateCity)? {
        return getCities()?.first(where: { string.elementsEqual($0.getIdentifier()) })
    }
}

public struct SovereignStateCityWrapper : SovereignStateCity, SovereignRegionWrapper {
    public let city:any SovereignStateCity
    
    public init(_ city: any SovereignStateCity) {
        self.city = city
    }
    public init?(_ description: String) {
        guard let city:any SovereignStateCity = SovereignStateCities.valueOfCacheID(description) else { return nil }
        self = SovereignStateCityWrapper(city)
    }
    
    public init(from decoder: Decoder) throws {
        let container:SingleValueDecodingContainer = try decoder.singleValueContainer()
        let identifier:String = try container.decode(String.self)
        city = SovereignStateCities.valueOfCacheID(identifier) ?? CitiesUnitedStatesMinnesota.kasson
    }
    
    public func getIdentifier() -> String {
        return city.getIdentifier()
    }
    public func getCacheID() -> String {
        return city.getCacheID()
    }
    public func getKeywords() -> [String] {
        return city.getKeywords()
    }
    public func getAdditionalKeywords() -> [String]? {
        return city.getAdditionalKeywords()
    }
    public func isMentioned(in string: String, exact: Bool, ignoreCase: Bool) -> Bool {
        return city.isMentioned(in: string, exact: exact, ignoreCase: ignoreCase)
    }
    
    public func getShortName() -> String {
        return city.getShortName()
    }
    public func getShortNameDecimalSeparatorIndex() -> Int? {
        return city.getShortNameDecimalSeparatorIndex()
    }
    public func getRealName() -> String? {
        return city.getRealName()
    }
    public func getConditionalName() -> String? {
        return city.getConditionalName()
    }
    public func getOfficialNames() -> [String]? {
        return city.getOfficialNames()
    }
    public func getAliases() -> [String]? {
        return city.getAliases()
    }
    
    public func getGovernmentWebsite() -> String? {
        return city.getGovernmentWebsite()
    }
    
    public func getFlagURL() -> String? {
        return city.getFlagURL()
    }
    public func getFlagURLWikipediaSVGID() -> String? {
        return city.getFlagURLWikipediaSVGID()
    }
    public func getWikipediaURL() -> String {
        return city.getWikipediaURL()
    }
    public func getWikipediaURLPrefix() -> String? {
        return city.getWikipediaURLPrefix()
    }
    public func getWikipediaURLSuffix() -> String? {
        return city.getWikipediaURLSuffix()
    }
    
    public func getTimeZones() -> [SovereignStateTimeZone]? {
        return city.getTimeZones()
    }
    public func getTemperateZones() -> [TemperateZone]? {
        return city.getTemperateZones()
    }
    
    public func getSubdivision() -> any SovereignStateSubdivision {
        return city.getSubdivision()
    }
    public func getDefaultType() -> SovereignStateCityType {
        return city.getDefaultType()
    }
    public func getType() -> SovereignStateCityType? {
        return city.getType()
    }
    public func isCapital() -> Bool {
        return city.isCapital()
    }
}
