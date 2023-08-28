//
//  SovereignStateSubdivision.swift
//  
//
//  Created by Evan Anderson on 6/16/22.
//

import Foundation

public enum SovereignStateSubdivisions {
    public static var all:[any SovereignStateSubdivision] = {
        return Country.allCases.compactMap({ $0.subdivisions }).flatMap({ $0 })
    }()
    
    public static func getAllMentioned(_ string: String, cache: Bool = true, ignoreCase: Bool = false) -> [any SovereignStateSubdivision]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateSubdivision] = SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] {
            return cached.isEmpty ? nil : cached
        }
        let subdivisions:[any SovereignStateSubdivision] = all.filter({ $0.isMentioned(in: string, exact: false, ignoreCase: ignoreCase) })
        if cache {
            SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    public static func getAllMentioned(_ string: String, country: Country, cache: Bool = true, ignoreCase: Bool = false) -> [any SovereignStateSubdivision]? {
        guard var subdivisions:[any SovereignStateSubdivision] = country.subdivisions else { return nil }
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateSubdivision] = SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] {
            return cached.isEmpty ? nil : cached
        }
        subdivisions.removeAll(where: { !$0.isMentioned(in: string, exact: false, ignoreCase: ignoreCase) })
        if cache {
            SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    
    public static func get_all_mentioned_cached(_ string: String) -> [any SovereignStateSubdivision]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateSubdivision] = SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] {
            return cached.isEmpty ? nil : cached
        }
        let subdivisions:[any SovereignStateSubdivision] = all.filter({ $0.is_mentioned(in: string) })
        SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] = subdivisions
        return subdivisions.isEmpty ? nil : subdivisions
    }
    public static func get_all_mentioned(_ string: String) -> [any SovereignStateSubdivision]? {
        let subdivisions:[any SovereignStateSubdivision] = all.filter({ $0.is_mentioned(in: string) })
        return subdivisions.isEmpty ? nil : subdivisions
    }
    
    public static func valueOf(_ string: String, cache: Bool = true, ignoreCase: Bool = false) -> [any SovereignStateSubdivision]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateSubdivision] = SwiftSovereignStateCacheSubdivisions.valueOfAll[stringLowercase] {
            return cached.isEmpty ? nil : cached
        }
        let subdivisions:[any SovereignStateSubdivision] = all.filter({ $0.isMentioned(in: string, exact: true, ignoreCase: ignoreCase) })
        if cache {
            SwiftSovereignStateCacheSubdivisions.valueOfAll[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    public static func valueOf(_ string: String, country: Country, cache: Bool = true, ignoreCase: Bool = false) -> (any SovereignStateSubdivision)? {
        guard var subdivisions:[any SovereignStateSubdivision] = country.subdivisions else { return nil }
        let stringLowercase:String = string.lowercased()
        if let subdivision:Any? = SwiftSovereignStateCacheSubdivisions.valueOf[stringLowercase] {
            return subdivision as? (any SovereignStateSubdivision)
        }
        subdivisions.removeAll(where: { !$0.isMentioned(in: string, exact: true, ignoreCase: ignoreCase) })
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
        let components:[String] = cacheID.split(separator: "-").map({ String($0) })
        guard components.count == 2, let subdivision:any SovereignStateSubdivision = Country.init(rawValue: components[0])?.subdivision_type?.init(rawValue: components[1]) else { return nil }
        if cache {
            SwiftSovereignStateCacheSubdivisions.valueOfCacheID[cacheID] = subdivision
        }
        return subdivision
    }
    // parallel
    public static func getAllMentionedParallel(_ string: String, cache: Bool = true, ignoreCase: Bool = false) async -> [any SovereignStateSubdivision]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateSubdivision] = SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] {
            return cached.isEmpty ? nil : cached
        }
        let subdivisions:[any SovereignStateSubdivision] = await all.filterAsync({ $0.isMentioned(in: string, exact: false, ignoreCase: ignoreCase) })
        if cache {
            SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    public static func getAllMentionedParallel(_ string: String, country: Country, cache: Bool = true, ignoreCase: Bool = false) async -> [any SovereignStateSubdivision]? {
        guard var subdivisions:[any SovereignStateSubdivision] = country.subdivisions else { return nil }
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateSubdivision] = SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] {
            return cached.isEmpty ? nil : subdivisions
        }
        subdivisions = await subdivisions.filterAsync({ $0.isMentioned(in: string, exact: false, ignoreCase: ignoreCase) })
        if cache {
            SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    
    public static func valueOfParallel(_ string: String, cache: Bool = true, ignoreCase: Bool = false) async -> [any SovereignStateSubdivision]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateSubdivision] = SwiftSovereignStateCacheSubdivisions.valueOfAll[stringLowercase] {
            return cached.isEmpty ? nil : cached
        }
        let subdivisions:[any SovereignStateSubdivision] = await all.filterAsync({ $0.isMentioned(in: string, exact: true, ignoreCase: ignoreCase) })
        if cache {
            SwiftSovereignStateCacheSubdivisions.valueOfAll[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    public static func valueOfParallel(_ string: String, country: Country, cache: Bool = true, ignoreCase: Bool = false) async -> (any SovereignStateSubdivision)? {
        guard var subdivisions:[any SovereignStateSubdivision] = country.subdivisions else { return nil }
        let stringLowercase:String = string.lowercased()
        if let subdivision:Any? = SwiftSovereignStateCacheSubdivisions.valueOf[stringLowercase] {
            return subdivision as? (any SovereignStateSubdivision)
        }
        subdivisions = await subdivisions.filterAsync({ $0.isMentioned(in: string, exact: true, ignoreCase: ignoreCase) })
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
        return subdivision_type?.init(rawValue: string)
    }
}

public protocol SovereignStateSubdivision : SovereignState { // https://en.wikipedia.org/wiki/List_of_first-level_administrative_divisions_by_country
    /// The country this subdivision's administrative borders are claimed by.
    var country : Country { get }
    var type : SovereignStateSubdivisionType { get }
    var type_suffix : String { get }
    
    /// The neighboring subdivisions, in relation the its administrative borders.
    var neighbors : [any SovereignStateSubdivision]? { get }
    
    /// The level-2 administrative units' type this subdivision contains.
    var counties_type : (any SovereignStateLevel2Division.Type)? { get }
    /// The level-2 administrative units this subdivision contains.
    var counties : [any SovereignStateLevel2Division]? { get }
    
    /// The level-3 administrative units' type this subdivision contains.
    var cities_type : (any SovereignStateCity.Type)? { get }
    /// The level-3 administrative units this subdivision contains.
    var cities : [any SovereignStateCity]? { get }
}

public extension SovereignStateSubdivision {
    init?(_ description: String) {
        guard let subdivision:any SovereignStateSubdivision = SovereignStateSubdivisions.valueOfCacheID(description), subdivision is Self else { return nil }
        self = subdivision as! Self
    }
    
    var cache_id : String {
        return country.rawValue + "-" + rawValue
    }
    
    var name : String {
        let table:String = "Subdivisions1\(country.name.replacingOccurrences(of: " ", with: ""))"
        let key:String.LocalizationValue = String.LocalizationValue(stringLiteral: rawValue + "_name_short")
        return String(localized: key, table: table, bundle: Bundle.module)
    }
    
    var iso_alpha_2 : String? {
        return nil
    }
    var iso_alpha_3 : String? {
        return nil
    }
    var currencies : [Currency] {
        return country.currencies
    }
    
    var wikipedia_url_suffix : String? {
        return "_" + type_suffix
    }
    var type_suffix : String {
        return type.name_singular.replacingOccurrences(of: " ", with: "_")
    }
    
    var neighbors : [any SovereignStateSubdivision]? {
        return nil
    }
    
    var counties_type : (any SovereignStateLevel2Division.Type)? {
        return nil
    }
    var counties : [any SovereignStateLevel2Division]? {
        return nil
    }
    
    var cities_type : (any SovereignStateCity.Type)? {
        return nil
    }
    var cities : [any SovereignStateCity]? {
        return nil
    }
    
    func wrapped() -> SovereignStateSubdivisionWrapper {
        return SovereignStateSubdivisionWrapper(self)
    }
}

public struct SovereignStateSubdivisionWrapper : SovereignStateSubdivision, SovereignRegionWrapper {    
    public var rawValue: String
    
    public let subdivision:any SovereignStateSubdivision
    
    public init(_ subdivision: any SovereignStateSubdivision) {
        self.subdivision = subdivision
        rawValue = subdivision.rawValue
    }
    public init?(_ description: String) {
        guard let subdivision:any SovereignStateSubdivision = SovereignStateSubdivisions.valueOfCacheID(description) else { return nil }
        self = subdivision.wrapped()
        rawValue = subdivision.rawValue
    }
    public init?(rawValue: String) {
        guard let subdivision:any SovereignStateSubdivision = SovereignStateSubdivisions.valueOfCacheID(rawValue) else { return nil }
        self = subdivision.wrapped()
        self.rawValue = rawValue
    }
    
    public init(from decoder: Decoder) throws {
        let container:SingleValueDecodingContainer = try decoder.singleValueContainer()
        let identifier:String = try container.decode(String.self)
        subdivision = SovereignStateSubdivisions.valueOfCacheID(identifier) ?? SubdivisionsUnitedStates.minnesota
        rawValue = subdivision.rawValue
    }
    
    public var cache_id : String {
        return subdivision.cache_id
    }
    public var keywords : Set<String> {
        return subdivision.keywords
    }
    public var additional_keywords : Set<String>? {
        return subdivision.additional_keywords
    }
    public func isMentioned(in string: String, exact: Bool, ignoreCase: Bool) -> Bool {
        return subdivision.isMentioned(in: string, exact: exact, ignoreCase: ignoreCase)
    }
    
    public var name : String {
        return subdivision.name
    }
    public var wikipedia_name : String? {
        return subdivision.wikipedia_name
    }
    public var official_names : Set<String>? {
        return subdivision.official_names
    }
    public var aliases : Set<String>? {
        return subdivision.aliases
    }
    
    public var government_website : String? {
        return subdivision.government_website
    }
    
    public var flag_url : String? {
        return subdivision.flag_url
    }
    public var wikipedia_flag_url_svg_id : String? {
        return subdivision.wikipedia_flag_url_svg_id
    }
    public var wikipedia_url : String {
        return subdivision.wikipedia_url
    }
    public var wikipedia_url_prefix : String? {
        return subdivision.wikipedia_url_prefix
    }
    public var wikipedia_url_suffix : String? {
        return subdivision.wikipedia_url_suffix
    }
    
    public var time_zones : [SovereignStateTimeZone]? {
        return subdivision.time_zones
    }
    public var temperate_zones : [TemperateZone]? {
        return subdivision.temperate_zones
    }
    
    public var iso_alpha_2 : String? {
        return subdivision.iso_alpha_2
    }
    public var iso_alpha_3 : String? {
        return subdivision.iso_alpha_3
    }
    
    public var country : Country {
        return subdivision.country
    }
    public var type : SovereignStateSubdivisionType {
        return subdivision.type
    }
    public var type_suffix : String {
        return subdivision.type_suffix
    }
    
    public var neighbors : [any SovereignStateSubdivision]? {
        return subdivision.neighbors
    }
    public var cities : [any SovereignStateCity]? {
        return subdivision.cities
    }
}
