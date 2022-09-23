//
//  SovereignStateSubdivision.swift
//  
//
//  Created by Evan Anderson on 6/16/22.
//

import Foundation

public enum SovereignStateSubdivisions {
    public static func getAllMentioned(_ string: String, cache: Bool = true) -> [any SovereignStateSubdivision]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateSubdivision] = SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] {
            return cached
        }
        let subdivisions:[any SovereignStateSubdivision] = Country.allCases.compactMap({ getAllMentioned(string, country: $0, cache: cache) }).flatMap({ $0 })
        if cache {
            SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    public static func getAllMentioned(_ string: String, country: Country, cache: Bool = true) -> [any SovereignStateSubdivision]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateSubdivision] = SwiftSovereignStateCacheSubdivisions.mentioned[stringLowercase] {
            return cached
        }
        let subdivisions:[any SovereignStateSubdivision] = country.getSubdivisions()?.filter({ $0.isMentioned(in: string) }) ?? [any SovereignStateSubdivision]()
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
        let subdivisions:[any SovereignStateSubdivision] = Country.allCases.compactMap({ valueOf(string, country: $0, cache: cache) })
        if cache {
            SwiftSovereignStateCacheSubdivisions.valueOfAll[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    public static func valueOf(_ string: String, country: Country, cache: Bool = true) -> (any SovereignStateSubdivision)? {
        guard let subdivisions:[any SovereignStateSubdivision] = country.getSubdivisions() else { return nil }
        let stringLowercase:String = string.lowercased()
        if let subdivision:Any? = SwiftSovereignStateCacheSubdivisions.valueOf[stringLowercase] {
            return subdivision as? (any SovereignStateSubdivision)
        }
        let subdivision:(any SovereignStateSubdivision)? = subdivisions.filter({ $0.isMentioned(in: string, exact: true) }).first
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
}

public protocol SovereignStateSubdivision : SovereignState {
    func getCountry() -> Country
    func getDefaultType() -> SovereignStateSubdivisionType
    func getType() -> SovereignStateSubdivisionType?
    func getTypeSuffix() -> String
    
    func getNeighbors() -> [any SovereignStateSubdivision]?
    func getCities() -> [any SovereignStateCity]?
}

public extension SovereignStateSubdivision {
    func getCacheID() -> String {
        return getCountry().getCacheID() + "_" + rawValue
    }
    func getISOAlpha2() -> String? {
        return nil
    }
    func getISOAlpha3() -> String? {
        return nil
    }
    
    func getType() -> SovereignStateSubdivisionType? {
        return nil
    }
    func getTypeSuffix() -> String {
        return (getType() ?? getDefaultType()).getSingularName().replacingOccurrences(of: " ", with: "_")
    }
    
    func getNeighbors() -> [any SovereignStateSubdivision]? {
        return nil
    }
    func getCities() -> [any SovereignStateCity]? {
        return nil
    }
}
