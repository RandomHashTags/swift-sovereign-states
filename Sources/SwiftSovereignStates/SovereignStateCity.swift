//
//  SovereignStateCity.swift
//
//
//  Created by Evan Anderson on 7/19/22.
//

import Foundation

public enum SovereignStateCities {
    public static var all:[any SovereignStateCity] = {
        return SovereignStateSubdivisions.all.compactMap({ $0.cities }).flatMap({ $0 })
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
        guard var cities:[any SovereignStateCity] = subdivision.cities else { return nil }
        let id:String = subdivision.cache_id + string.lowercased()
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
        guard var cities:[any SovereignStateCity] = subdivision.cities else { return nil }
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
        let components:[String] = cacheID.split(separator: "-").map({ String($0) })
        guard components.count == 3, let city:any SovereignStateCity = Country.init(rawValue: components[0])?.getSubdivisionType()?.init(rawValue: components[1])?.cities_type?.init(rawValue: components[2]) else { return nil }
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
        guard var cities:[any SovereignStateCity] = subdivision.cities else { return nil }
        let id:String = subdivision.cache_id + string.lowercased()
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
        guard var cities:[any SovereignStateCity] = subdivision.cities else { return nil }
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
    var subdivision : any SovereignStateSubdivision { get }
    var type : SovereignStateCityType { get }
    /// Whether or not this city is the capital in relation to its subdivision.
    func isCapital() -> Bool
}

public extension SovereignStateCity {
    init?(_ description: String) {
        guard let city:any SovereignStateCity = SovereignStateCities.valueOfCacheID(description), city is Self else { return nil }
        self = city as! Self
    }
    
    var cache_id : String {
        return subdivision.cache_id + "-" + rawValue
    }
    var currencies : [Currency] {
        return subdivision.currencies
    }
    
    var type : SovereignStateCityType {
        return SovereignStateCityType.city
    }
    
    func isCapital() -> Bool {
        return false
    }
    
    internal func getDefaultURLSuffix() -> String {
        let subdivision:any SovereignStateSubdivision = subdivision
        return ",_" + (subdivision.real_name ?? subdivision.getShortName()).replacingOccurrences(of: " ", with: "_")
    }
    var wikipedia_url_suffix : String? {
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
        return cities_type?.init(rawValue: string)
    }
}

public struct SovereignStateCityWrapper : SovereignStateCity, SovereignRegionWrapper {
    public static var allCases: [SovereignStateCityWrapper] = []
    public var rawValue: String
    
    public let city:any SovereignStateCity
    
    public init(_ city: any SovereignStateCity) {
        self.city = city
        rawValue = city.rawValue
    }
    public init?(_ description: String) {
        guard let city:any SovereignStateCity = SovereignStateCities.valueOfCacheID(description) else { return nil }
        self = SovereignStateCityWrapper(city)
        rawValue = city.rawValue
    }
    public init?(rawValue: String) {
        guard let city:any SovereignStateCity = SovereignStateCities.valueOfCacheID(rawValue) else { return nil }
        self = SovereignStateCityWrapper(city)
        self.rawValue = rawValue
    }
    
    public init(from decoder: Decoder) throws {
        let container:SingleValueDecodingContainer = try decoder.singleValueContainer()
        let identifier:String = try container.decode(String.self)
        city = SovereignStateCities.valueOfCacheID(identifier) ?? CitiesUnitedStatesMinnesota.kasson
        rawValue = city.rawValue
    }
    
    public var cache_id : String {
        return city.cache_id
    }
    public var keywords : Set<String> {
        return city.keywords
    }
    public var additional_keywords : Set<String>? {
        return city.additional_keywords
    }
    public func isMentioned(in string: String, exact: Bool, ignoreCase: Bool) -> Bool {
        return city.isMentioned(in: string, exact: exact, ignoreCase: ignoreCase)
    }
    
    public func getShortName() -> String {
        return city.getShortName()
    }
    public var short_name_decimal_separator_index : Int? {
        return city.short_name_decimal_separator_index
    }
    public var real_name : String? {
        return city.real_name
    }
    public var wikipedia_name : String? {
        return city.wikipedia_name
    }
    public var official_names : Set<String>? {
        return city.official_names
    }
    public var aliases : Set<String>? {
        return city.aliases
    }
    
    public var government_website : String? {
        return city.government_website
    }
    
    public var flag_url : String? {
        return city.flag_url
    }
    public var wikipedia_flag_url_svg_id : String? {
        return city.wikipedia_flag_url_svg_id
    }
    public var wikipedia_url : String {
        return city.wikipedia_url
    }
    public var wikipedia_url_prefix : String? {
        return city.wikipedia_url_prefix
    }
    public var wikipedia_url_suffix : String? {
        return city.wikipedia_url_suffix
    }
    
    public var time_zones : [SovereignStateTimeZone]? {
        return city.time_zones
    }
    public var temperate_zones : [TemperateZone]? {
        return city.temperate_zones
    }
    
    public var subdivision : any SovereignStateSubdivision {
        return city.subdivision
    }
    public var type : SovereignStateCityType {
        return city.type
    }
    public func isCapital() -> Bool {
        return city.isCapital()
    }
}
