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
    
    public static func getAllMentioned(_ string: String, cache: Bool = true) -> [any SovereignStateCity]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateCity] = SwiftSovereignStateCacheCities.mentionedAll[stringLowercase] {
            return cached
        }
        let cities:[any SovereignStateCity] = all.filter({ $0.isMentioned(in: string) })
        if cache {
            SwiftSovereignStateCacheCities.mentionedAll[stringLowercase] = cities
        }
        return cities.isEmpty ? nil : cities
    }
    public static func getAllMentioned(_ string: String, subdivision: any SovereignStateSubdivision, cache: Bool = true) -> [any SovereignStateCity]? {
        guard var cities:[any SovereignStateCity] = subdivision.getCities() else { return nil }
        let id:String = subdivision.getCacheID() + string.lowercased()
        if let cached:[any SovereignStateCity] = SwiftSovereignStateCacheCities.mentionedSubdivision[id] {
            return cached
        }
        cities.removeAll(where: { !$0.isMentioned(in: string) })
        if cache {
            SwiftSovereignStateCacheCities.mentionedSubdivision[id] = cities
        }
        return cities.isEmpty ? nil : cities
    }

    public static func valueOf(_ string: String, cache: Bool = true) -> [any SovereignStateCity]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateCity] = SwiftSovereignStateCacheCities.valueOfAll[stringLowercase] {
            return cached.isEmpty ? nil : cached
        }
        let cities:[any SovereignStateCity] = all.filter({ $0.isMentioned(in: string, exact: true) })
        if cache {
            SwiftSovereignStateCacheCities.valueOfAll[stringLowercase] = cities
        }
        return cities.isEmpty ? nil : cities
    }
    public static func valueOf(_ string: String, subdivision: any SovereignStateSubdivision, cache: Bool = true) -> [any SovereignStateCity]? {
        guard var cities:[any SovereignStateCity] = subdivision.getCities() else { return nil }
        let stringLowercase:String = string.lowercased()
        if let cities:[any SovereignStateCity] = SwiftSovereignStateCacheCities.valueOf[stringLowercase] {
            return cities.isEmpty ? nil : cities
        }
        cities.removeAll(where: { !$0.isMentioned(in: string, exact: true) })
        if cache {
            SwiftSovereignStateCacheCities.valueOf[stringLowercase] = cities
        }
        return cities.isEmpty ? nil : cities
    }
    // parallel
    public static func getAllMentionedParallel(_ string: String, cache: Bool = true) async -> [any SovereignStateCity]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateCity] = SwiftSovereignStateCacheCities.mentionedAll[stringLowercase] {
            return cached
        }
        let cities:[any SovereignStateCity] = await all.filterAsync({ $0.isMentioned(in: string) })
        if cache {
            SwiftSovereignStateCacheCities.mentionedAll[stringLowercase] = cities
        }
        return cities.isEmpty ? nil : cities
    }
    public static func getAllMentionedParallel(_ string: String, subdivision: any SovereignStateSubdivision, cache: Bool = true) async -> [any SovereignStateCity]? {
        guard var cities:[any SovereignStateCity] = subdivision.getCities() else { return nil }
        let id:String = subdivision.getCacheID() + string.lowercased()
        if let cached:[any SovereignStateCity] = SwiftSovereignStateCacheCities.mentionedSubdivision[id] {
            return cached
        }
        cities = await cities.filterAsync({ $0.isMentioned(in: string) })
        if cache {
            SwiftSovereignStateCacheCities.mentionedSubdivision[id] = cities
        }
        return cities.isEmpty ? nil : cities
    }

    public static func valueOfParallel(_ string: String, cache: Bool = true) async -> [any SovereignStateCity]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateCity] = SwiftSovereignStateCacheCities.valueOfAll[stringLowercase] {
            return cached.isEmpty ? nil : cached
        }
        let cities:[any SovereignStateCity] = await all.filterAsync({ $0.isMentioned(in: string, exact: true) })
        if cache {
            SwiftSovereignStateCacheCities.valueOfAll[stringLowercase] = cities
        }
        return cities.isEmpty ? nil : cities
    }
    public static func valueOfParallel(_ string: String, subdivision: any SovereignStateSubdivision, cache: Bool = true) async -> [any SovereignStateCity]? {
        guard var cities:[any SovereignStateCity] = subdivision.getCities() else { return nil }
        let stringLowercase:String = string.lowercased()
        if let cities:[any SovereignStateCity] = SwiftSovereignStateCacheCities.valueOf[stringLowercase] {
            return cities.isEmpty ? nil : cities
        }
        cities = await cities.filterAsync({ $0.isMentioned(in: string, exact: true) })
        if cache {
            SwiftSovereignStateCacheCities.valueOf[stringLowercase] = cities
        }
        return cities.isEmpty ? nil : cities
    }
}

public protocol SovereignStateCity : SovereignRegion {
    /// The subdivsion that this city's administrative borders is located in.
    func getSubdivision() -> any SovereignStateSubdivision
    func getDefaultType() -> SovereignStateCityType
    func getType() -> SovereignStateCityType?
    /// Whether or not this city is the capital in relation to its subdivision (``getSubdivision()``).
    func isCapital() -> Bool
}
public extension SovereignStateCity {
    func getCacheID() -> String {
        let subdivision = getSubdivision()
        return subdivision.getCountry().getIdentifier() + "_" + subdivision.getIdentifier() + "_" + getIdentifier()
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
