//
//  SovereignStateSubdivision.swift
//  
//
//  Created by Evan Anderson on 6/16/22.
//

import Foundation

public enum SovereignStateSubdivisions {
    #if swift(<5.7)
    public static func getAllMentioned(_ string: String, cache: Bool = true) -> [SovereignStateSubdivisionWrapper]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[SovereignStateSubdivisionWrapper] = SwiftSovereignStateCacheSubdivision.mentioned[stringLowercase] {
            return cached
        }
        let subdivisions:[SovereignStateSubdivisionWrapper] = Country.allCases.compactMap({ getAllMentioned(string, country: $0, cache: cache) }).flatMap({ $0 }).map({ $0.wrapped() })
        if cache {
            SwiftSovereignStateCacheSubdivision.mentioned[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    public static func getAllMentioned(_ string: String, country: Country, cache: Bool = true) -> [SovereignStateSubdivisionWrapper]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[SovereignStateSubdivisionWrapper] = SwiftSovereignStateCacheSubdivision.mentioned[stringLowercase] {
            return cached
        }
        let subdivisions:[SovereignStateSubdivisionWrapper] = country.getSubdivisions()?.filter({ $0.isMentioned(in: string) }) ?? [SovereignStateSubdivisionWrapper]()
        if cache {
            SwiftSovereignStateCacheSubdivision.mentioned[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    
    public static func valueOf(_ string: String, cache: Bool = true) -> [SovereignStateSubdivisionWrapper]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[SovereignStateSubdivisionWrapper] = SwiftSovereignStateCacheSubdivision.valueOfAll[stringLowercase] {
            return cached.isEmpty ? nil : cached
        }
        let subdivisions:[SovereignStateSubdivisionWrapper] = Country.allCases.compactMap({ valueOf(string, country: $0, cache: cache) })
        if cache {
            SwiftSovereignStateCacheSubdivision.valueOfAll[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    public static func valueOf(_ string: String, country: Country, cache: Bool = true) -> SovereignStateSubdivisionWrapper? {
        guard let subdivisions:[SovereignStateSubdivisionWrapper] = country.getSubdivisions() else { return nil }
        let stringLowercase:String = string.lowercased()
        if let subdivision:Any? = SwiftSovereignStateCacheSubdivision.valueOf[stringLowercase] {
            return subdivision as? SovereignStateSubdivisionWrapper
        }
        let subdivision:SovereignStateSubdivisionWrapper? = subdivisions.filter({ $0.isMentioned(in: string, exact: true) }).first
        if cache {
            SwiftSovereignStateCacheSubdivision.valueOf[stringLowercase] = subdivision
        }
        return subdivision
    }
    #else
    public static func getAllMentioned(_ string: String, cache: Bool = true) -> [any SovereignStateSubdivision]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateSubdivision] = SwiftSovereignStateCacheSubdivision.mentioned[stringLowercase] {
            return cached
        }
        let subdivisions:[any SovereignStateSubdivision] = Country.allCases.compactMap({ getAllMentioned(string, country: $0, cache: cache) }).flatMap({ $0 })
        if cache {
            SwiftSovereignStateCacheSubdivision.mentioned[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    public static func getAllMentioned(_ string: String, country: Country, cache: Bool = true) -> [any SovereignStateSubdivision]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateSubdivision] = SwiftSovereignStateCacheSubdivision.mentioned[stringLowercase] {
            return cached
        }
        let subdivisions:[any SovereignStateSubdivision] = country.getSubdivisions()?.filter({ $0.isMentioned(in: string) }) ?? [any SovereignStateSubdivision]()
        if cache {
            SwiftSovereignStateCacheSubdivision.mentioned[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    
    public static func valueOf(_ string: String, cache: Bool = true) -> [any SovereignStateSubdivision]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[any SovereignStateSubdivision] = SwiftSovereignStateCacheSubdivision.valueOfAll[stringLowercase] {
            return cached.isEmpty ? nil : cached
        }
        let subdivisions:[any SovereignStateSubdivision] = Country.allCases.compactMap({ valueOf(string, country: $0, cache: cache) })
        if cache {
            SwiftSovereignStateCacheSubdivision.valueOfAll[stringLowercase] = subdivisions
        }
        return subdivisions.isEmpty ? nil : subdivisions
    }
    public static func valueOf(_ string: String, country: Country, cache: Bool = true) -> (any SovereignStateSubdivision)? {
        guard let subdivisions:[any SovereignStateSubdivision] = country.getSubdivisions() else { return nil }
        let stringLowercase:String = string.lowercased()
        if let subdivision:Any? = SwiftSovereignStateCacheSubdivision.valueOf[stringLowercase] {
            return subdivision as? (any SovereignStateSubdivision)
        }
        let subdivision:(any SovereignStateSubdivision)? = subdivisions.filter({ $0.isMentioned(in: string, exact: true) }).first
        if cache {
            SwiftSovereignStateCacheSubdivision.valueOf[stringLowercase] = subdivision
        }
        return subdivision
    }
    #endif
}

public struct SovereignStateSubdivisionWrapper : SovereignStateSubdivision {
    public typealias RawValue = String
    
    public let rawValue:String
    private let country:Country, defaultType:SovereignStateSubdivisionType, type:SovereignStateSubdivisionType?, wikipediaURL:String
    private let shortName:String, realName:String?, conditionalName:String?, officialNames:[String]?, aliases:[String]?
    private let isoAlpha2:String?, isoAlpha3:String?
    #if swift(<5.7)
    private let neighbors:[SovereignStateSubdivisionWrapper]?
    #else
    private let neighbors:[any SovereignStateSubdivision]?
    #endif
    private let flagURL:String?
    private let timeZones:[SovereignStateTimeZone]?
    
    #if swift(<5.7)
    init<T: SovereignStateSubdivision>(_ subdivision: T) {
        self.rawValue = subdivision.rawValue
        self.country = subdivision.getCountry()
        self.defaultType = subdivision.getDefaultType()
        self.type = subdivision.getType()
        self.wikipediaURL = subdivision.getWikipediaURL()
        self.shortName = subdivision.getShortName()
        self.realName = subdivision.getRealName()
        self.conditionalName = subdivision.getConditionalName()
        self.officialNames = subdivision.getOfficialNames()
        self.aliases = subdivision.getAliases()
        self.isoAlpha2 = subdivision.getISOAlpha2()
        self.isoAlpha3 = subdivision.getISOAlpha3()
        self.neighbors = subdivision.getNeighbors()?.map({ $0.wrapped() })
        self.flagURL = subdivision.getFlagURL()
        self.timeZones = subdivision.getTimeZones()
    }
    #else
    init(_ subdivision: any SovereignStateSubdivision) {
        self.rawValue = subdivision.rawValue
        self.country = subdivision.getCountry()
        self.defaultType = subdivision.getDefaultType()
        self.type = subdivision.getType()
        self.wikipediaURL = subdivision.getWikipediaURL()
        self.shortName = subdivision.getShortName()
        self.realName = subdivision.getRealName()
        self.conditionalName = subdivision.getConditionalName()
        self.officialNames = subdivision.getOfficialNames()
        self.aliases = subdivision.getAliases()
        self.isoAlpha2 = subdivision.getISOAlpha2()
        self.isoAlpha3 = subdivision.getISOAlpha3()
        self.neighbors = subdivision.getNeighbors()
        self.flagURL = subdivision.getFlagURL()
        self.timeZones = subdivision.getTimeZones()
    }
    #endif
    
    public init?(rawValue: String) {
        self.rawValue = rawValue
        country = Country.united_states
        defaultType = SovereignStateSubdivisionType.autonomous_cities
        type = nil
        wikipediaURL = ""
        shortName = ""
        realName = nil
        conditionalName = nil
        officialNames = nil
        aliases = nil
        isoAlpha2 = nil
        isoAlpha3 = nil
        neighbors = nil
        flagURL = nil
        timeZones = nil
    }
    
    public func getCountry() -> Country {
        return country
    }
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return defaultType
    }
    public func getType() -> SovereignStateSubdivisionType? {
        return type
    }
    public func getWikipediaURL() -> String {
        return wikipediaURL
    }
    
    public func getShortName() -> String {
        return shortName
    }
    public func getRealName() -> String? {
        return realName
    }
    public func getConditionalName() -> String? {
        return conditionalName
    }
    public func getOfficialNames() -> [String]? {
        return officialNames
    }
    public func getAliases() -> [String]? {
        return aliases
    }
    
    public func getISOAlpha2() -> String? {
        return isoAlpha2
    }
    public func getISOAlpha3() -> String? {
        return isoAlpha3
    }
    #if swift(<5.7)
    public func getNeighbors() -> [SovereignStateSubdivisionWrapper]? {
        return neighbors
    }
    #else
    public func getNeighbors() -> [any SovereignStateSubdivision]? {
        return neighbors
    }
    #endif
    public func getFlagURL() -> String? {
        return flagURL
    }
    public func getTimeZones() -> [SovereignStateTimeZone]? {
        return timeZones
    }
    
    public func wrapped() -> SovereignStateSubdivisionWrapper {
        return self
    }
    
    public static var allCases: [SovereignStateSubdivisionWrapper] = []
}


public extension Country {
    #if swift(<5.7)
    func valueOfSubdivision(_ string: String?) -> SovereignStateSubdivisionWrapper? {
        guard let string:String = string else { return nil }
        return SovereignStateSubdivisions.valueOf(string, country: self)
    }
    #else
    func valueOfSubdivision(_ string: String?) -> (any SovereignStateSubdivision)? {
        guard let string:String = string else { return nil }
        return SovereignStateSubdivisions.valueOf(string, country: self)
    }
    #endif
}

public protocol SovereignStateSubdivision : SovereignState {
    func getCountry() -> Country
    func getDefaultType() -> SovereignStateSubdivisionType
    func getType() -> SovereignStateSubdivisionType?
    func getWikipediaURLPrefix() -> String?
    func getWikipediaURLSuffix(typeSuffix: String) -> String?
    
    #if swift(<5.7)
    func getNeighbors() -> [SovereignStateSubdivisionWrapper]?
    #else
    func getNeighbors() -> [any SovereignStateSubdivision]?
    #endif
    
    func wrapped() -> SovereignStateSubdivisionWrapper
}

public extension SovereignStateSubdivision {
    func getCacheID() -> String {
        return getCountry().getCacheID().appending("_" + rawValue)
    }
    func getISOAlpha2() -> String? {
        return nil
    }
    func getISOAlpha3() -> String? {
        return nil
    }
    
    func getGovernmentWebsite() -> String? {
        return nil
    }
    
    func getType() -> SovereignStateSubdivisionType? {
        return nil
    }
    
    func getWikipediaURL() -> String {
        let conditionalName:String = getConditionalName() ?? getRealName() ?? getShortName()
        let type:SovereignStateSubdivisionType = getType() ?? getDefaultType()
        let prefix:String = getWikipediaURLPrefix() ?? "", suffix:String = type.getSingularName().replacingOccurrences(of: " ", with: "_")
        var customSuffix:String = getWikipediaURLSuffix(typeSuffix: suffix) ?? suffix
        if customSuffix.starts(with: "_") || customSuffix.starts(with: " ") {
            customSuffix = customSuffix.suffix(customSuffix.count-1).description
        }
        let hasSuffix:Bool = !customSuffix.isEmpty
        return "https://en.wikipedia.org/wiki/" + prefix + conditionalName.replacingOccurrences(of: " ", with: "_") + (hasSuffix ? "_" + customSuffix : "")
    }
    func getWikipediaURLPrefix() -> String? {
        return nil
    }
    func getWikipediaURLSuffix(typeSuffix: String) -> String? {
        return nil
    }
    
    internal func returnNeighbors() -> [Any]? {
        return nil
    }
    #if swift(<5.7)
    func getNeighbors() -> [SovereignStateSubdivisionWrapper]? {
        return returnNeighbors()?.compactMap({ ($0 as? SovereignStateSubdivision)?.wrapped() })
    }
    #else
    func getNeighbors() -> [any SovereignStateSubdivision]? {
        return returnNeighbors() as? [any SovereignStateSubdivision]
    }
    #endif
    
    func wrapped() -> SovereignStateSubdivisionWrapper {
        let id:String = getCacheID()
        if let cached:SovereignStateSubdivisionWrapper = SwiftSovereignStateCacheSubdivision.wrapped[id] {
            return cached
        }
        let wrapped:SovereignStateSubdivisionWrapper = SovereignStateSubdivisionWrapper(self)
        SwiftSovereignStateCacheSubdivision.wrapped[id] = wrapped
        return wrapped
    }
}
