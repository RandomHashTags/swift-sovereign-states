//
//  SovereignStateCity.swift
//
//
//  Created by Evan Anderson on 7/19/22.
//

import Foundation

public enum SovereignStateCities {
    public static let all:[any SovereignStateCity] = SovereignStateSubdivisions.all.compactMap({ $0.cities }).flatMap({ $0 })
    
    public static func getAllMentioned(_ string: String, options: String.CompareOptions) -> [any SovereignStateCity] {
        let string:String = string.folding(options: options, locale: nil)
        let start_index:String.Index = string.startIndex, end_index:String.Index = string.endIndex
        return all.filter({ SovereignRegions.doesSatisfy(string: string, start_index: start_index, end_index: end_index, values: $0.keywords.map_set({ $0.folding(options: options, locale: nil) })) })
    }
    
    public static func getAllMentioned(_ string: String, subdivision: any SovereignStateSubdivision, options: String.CompareOptions) -> [any SovereignStateCity] {
        guard let cities:[any SovereignStateCity] = subdivision.cities else { return [] }
        let string:String = string.folding(options: options, locale: nil)
        let start_index:String.Index = string.startIndex, end_index:String.Index = string.endIndex
        return cities.filter({ SovereignRegions.doesSatisfy(string: string, start_index: start_index, end_index: end_index, values: $0.keywords.map_set({ $0.folding(options: options, locale: nil) })) })
    }

    public static func valueOfCacheID(_ cacheID: String) -> (any SovereignStateCity)? {
        let components:[Substring] = cacheID.split(separator: "-")
        guard components.count == 3 else { return nil }
        return Locale.Region.init(String(components[0])).subdivisionType?.init(rawValue: String(components[1]))?.citiesType?.init(rawValue: String(components[2]))
    }
}

public protocol SovereignStateCity : SovereignRegion {
    /// The subdivision that this city's administrative borders are located in.
    var subdivision : any SovereignStateSubdivision { get }
    var capital : Self { get }
    
    var type : SovereignStateCityType { get }
}

public extension SovereignStateCity {
    init?(_ description: String) {
        guard let city:any SovereignStateCity = SovereignStateCities.valueOfCacheID(description), city is Self else { return nil }
        self = city as! Self
    }
    
    var cacheID : String {
        return subdivision.cacheID + "-" + rawValue
    }
    var name : String {
        let key:String.LocalizationValue = String.LocalizationValue(stringLiteral: rawValue + "_name_short")
        let table:String = "Subdivisions3\(subdivision.country.name(forLocale: Locale.init(identifier: "en")) .replacingOccurrences(of: " ", with: ""))\(subdivision.name.replacingOccurrences(of: " ", with: ""))"
        return String(localized: key, table: table, bundle: Bundle.module)
    }
    var currencies : [Currency] {
        return subdivision.currencies
    }
    
    var type : SovereignStateCityType {
        return SovereignStateCityType.city
    }
    
    var is_capital : Bool {
        return capital == self
    }
    
    internal func getDefaultURLSuffix() -> String {
        let subdivision:any SovereignStateSubdivision = subdivision
        return ",_" + subdivision.name.replacingOccurrences(of: " ", with: "_")
    }
    var wikipediaURLSuffix : String? {
        return getDefaultURLSuffix()
    }
    
    func wrapped() -> SovereignStateCityWrapper {
        return SovereignStateCityWrapper(self)
    }
}

public extension SovereignStateSubdivision {
    func valueOfCity(_ string: String?, options: String.CompareOptions) -> [any SovereignStateCity]? {
        guard let string:String = string else { return nil }
        return SovereignStateCities.getAllMentioned(string, subdivision: self, options: options)
    }
    func valueOfCityIdentifier(_ string: String) -> (any SovereignStateCity)? {
        return citiesType?.init(rawValue: string)
    }
}

public struct SovereignStateCityWrapper : SovereignStateCity, SovereignRegionWrapper {
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
    
    public var cacheID : String {
        return city.cacheID
    }
    public var keywords : Set<String> {
        return city.keywords
    }
    public var additionalKeywords : Set<String>? {
        return city.additionalKeywords
    }
    public func isMentioned(in string: String, options: String.CompareOptions) -> Bool {
        return city.isMentioned(in: string, options: options)
    }
    
    public var name : String {
        return city.name
    }
    public var wikipediaName : String? {
        return city.wikipediaName
    }
    public var officialNames : Set<String>? {
        return city.officialNames
    }
    public var aliases : Set<String>? {
        return city.aliases
    }
    
    public var governmentURL : String? {
        return city.governmentURL
    }
    
    public var flagURL : String? {
        return city.flagURL
    }
    public var wikipediaFlagURLSvgID : String? {
        return city.wikipediaFlagURLSvgID
    }
    public var wikipediaURL : String {
        return city.wikipediaURL
    }
    public var wikipediaURLPrefix : String? {
        return city.wikipediaURLPrefix
    }
    public var wikipediaURLSuffix : String? {
        return city.wikipediaURLSuffix
    }
    
    public var timeZones : [SovereignStateTimeZone]? {
        return city.timeZones
    }
    public var temperateZones : [TemperateZone]? {
        return city.temperateZones
    }
    
    public var subdivision : any SovereignStateSubdivision {
        return city.subdivision
    }
    public var type : SovereignStateCityType {
        return city.type
    }
    public var capital : Self {
        return SovereignStateCityWrapper(city.capital)
    }
}
