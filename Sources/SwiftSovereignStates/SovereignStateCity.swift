//
//  SovereignStateCity.swift
//
//
//  Created by Evan Anderson on 7/19/22.
//

import Foundation

public enum SovereignStateCities {
    public static func getAllMentioned(_ string: String, cache: Bool = true) -> [any SovereignStateCity]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateCity] = SwiftSovereignStateCacheCities.mentionedAll[stringLowercase] {
            return cached
        }
        let allCities:[[any SovereignStateCity]] = Country.allCases.compactMap({
            guard let subdivisions:[any SovereignStateSubdivision] = $0.getSubdivisions() else { return nil }
            let array:[any SovereignStateCity] = subdivisions.compactMap({ getAllMentioned(string, subdivision: $0, cache: cache) }).flatMap({ $0 })
            return array.isEmpty ? nil : array
        })
        let cities:[any SovereignStateCity] = allCities.flatMap({ $0 })
        if cache {
            SwiftSovereignStateCacheCities.mentionedAll[stringLowercase] = cities
        }
        return cities.isEmpty ? nil : cities
    }
    public static func getAllMentioned(_ string: String, subdivision: any SovereignStateSubdivision, cache: Bool = true) -> [any SovereignStateCity]? {
        let id:String = subdivision.getCacheID() + string.lowercased()
        if let cached:[any SovereignStateCity] = SwiftSovereignStateCacheCities.mentionedSubdivision[id] {
            return cached
        }
        let cities:[any SovereignStateCity] = subdivision.getCities()?.filter({ $0.isMentioned(in: string) }) ?? [any SovereignStateCity]()
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
        let allCities:[[any SovereignStateCity]] = Country.allCases.compactMap({
            guard let subdivisions:[any SovereignStateSubdivision] = $0.getSubdivisions() else { return nil }
            let array:[any SovereignStateCity] = subdivisions.compactMap({ valueOf(string, subdivision: $0, cache: cache) }).flatMap({ $0 })
            return array.isEmpty ? nil : array
        })
        let cities:[any SovereignStateCity] = allCities.flatMap({ $0 })
        if cache {
            SwiftSovereignStateCacheCities.valueOfAll[stringLowercase] = cities
        }
        return cities.isEmpty ? nil : cities
    }
    public static func valueOf(_ string: String, subdivision: any SovereignStateSubdivision, cache: Bool = true) -> [any SovereignStateCity]? {
        guard let allCities:[any SovereignStateCity] = subdivision.getCities() else { return nil }
        let stringLowercase:String = string.lowercased()
        if let cities:[any SovereignStateCity] = SwiftSovereignStateCacheCities.valueOf[stringLowercase] {
            return cities.isEmpty ? nil : cities
        }
        let cities:[any SovereignStateCity] = allCities.filter({ $0.isMentioned(in: string, exact: true) })
        if cache {
            SwiftSovereignStateCacheCities.valueOf[stringLowercase] = cities
        }
        return cities.isEmpty ? nil : cities
    }
}

public protocol SovereignStateCity : SovereignRegion {
    func getSubdivision() -> any SovereignStateSubdivision
    func getDefaultType() -> SovereignStateCityType
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
    
    func isCapital() -> Bool {
        return false
    }
}

public extension SovereignStateSubdivision {
    func valueOfCity(_ string: String?) -> [any SovereignStateCity]? {
        guard let string:String = string else { return nil }
        return SovereignStateCities.valueOf(string, subdivision: self)
    }
}
