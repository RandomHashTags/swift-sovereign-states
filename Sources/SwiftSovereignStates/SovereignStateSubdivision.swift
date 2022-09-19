//
//  SovereignStateSubdivision.swift
//  
//
//  Created by Evan Anderson on 6/16/22.
//

import Foundation

public enum SovereignStateSubdivisions {
    public static func getAllMentioned<T: SovereignStateSubdivision>(_ string: String, cache: Bool = true) -> [T]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[T] = SwiftSovereignStateCacheSubdivision.cachedMentioned[stringLowercase] as? [T] {
            return cached
        }
        let subdivisions:[T] = Country.allCases.compactMap({ getAllMentioned(string, country: $0, cache: cache) }).flatMap({ $0 })
        if cache {
            SwiftSovereignStateCacheSubdivision.cachedMentioned[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    public static func getAllMentioned<T: SovereignStateSubdivision>(_ string: String, country: Country, cache: Bool = true) -> [T]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[T] = SwiftSovereignStateCacheSubdivision.cachedMentioned[stringLowercase] as? [T] {
            return cached
        }
        let subdivisions:[T] = country.getSubdivisions()?.filter({ $0.isMentioned(in: string) }) ?? [T]()
        if cache {
            SwiftSovereignStateCacheSubdivision.cachedMentioned[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    
    public static func valueOf<T: SovereignStateSubdivision>(_ string: String, cache: Bool = true) -> [T]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[T] = SwiftSovereignStateCacheSubdivision.cachedValueOfAll[stringLowercase] as? [T] {
            return cached.isEmpty ? nil : cached
        }
        let subdivisions:[T] = Country.allCases.compactMap({ valueOf(string, country: $0, cache: cache) })
        if cache {
            SwiftSovereignStateCacheSubdivision.cachedValueOfAll[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    public static func valueOf<T: SovereignStateSubdivision>(_ string: String, country: Country, cache: Bool = true) -> T? {
        guard let subdivisions:[T] = country.getSubdivisions() else { return nil }
        let stringLowercase:String = string.lowercased()
        if let subdivision:Any? = SwiftSovereignStateCacheSubdivision.cachedValueOf[stringLowercase] {
            return subdivision as? T
        }
        let subdivision:T? = subdivisions.filter({ $0.isMentioned(in: string, exact: true) }).first
        if cache {
            SwiftSovereignStateCacheSubdivision.cachedValueOf[stringLowercase] = subdivision
        }
        return subdivision
    }
}

public extension Country {
    func valueOfSubdivision<T: SovereignStateSubdivision>(_ string: String?) -> T? {
        guard let string:String = string else { return nil }
        return SovereignStateSubdivisions.valueOf(string, country: self)
    }
}

public protocol SovereignStateSubdivision : SovereignState {
    func getCountry() -> Country
    func getDefaultType() -> SovereignStateSubdivisionType
    func getType() -> SovereignStateSubdivisionType?
    func getWikipediaURLPrefix() -> String?
    func getWikipediaURLSuffix(typeSuffix: String) -> String?
    
    func getNeighbors<T: SovereignStateSubdivision>() -> [T]?
}

public extension SovereignStateSubdivision {
    func getCacheID() -> String {
        return getCountry().rawValue.appending("_\(self)")
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
    
    func getActualWikipediaURL() -> String {
        let conditionalName:String = getConditionalName() ?? getRealName() ?? getShortName()
        let type:SovereignStateSubdivisionType = getType() ?? getDefaultType()
        let prefix:String = getWikipediaURLPrefix() ?? "", suffix:String = type.getSingularName()
        var customSuffix:String = getWikipediaURLSuffix(typeSuffix: suffix) ?? suffix
        if customSuffix.starts(with: "_") || customSuffix.starts(with: " ") {
            customSuffix = customSuffix.suffix(customSuffix.count-1).description
        }
        let hasSuffix:Bool = !customSuffix.isEmpty
        return "https://en.wikipedia.org/wiki/" + prefix + conditionalName.replacingOccurrences(of: " ", with: "_") + (hasSuffix ? "_" + customSuffix : "")
    }
    func getWikipediaURL() -> String {
        return getActualWikipediaURL()
    }
    func getWikipediaURLPrefix() -> String? {
        return nil
    }
    func getWikipediaURLSuffix(typeSuffix: String) -> String? {
        return nil
    }
    
    internal func getNeighbors() -> [Any]? {
        return nil
    }
    func getNeighbors<T: SovereignStateSubdivision>() -> [T]? {
        return getNeighbors() as? [T]
    }
}
