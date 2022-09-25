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
        return getCountry().getIdentifier() + "_" + getIdentifier()
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
