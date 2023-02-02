//
//  SubdivisionsDenmark.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsDenmark : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Denmark
    case hovedstaden
    case midtjylland
    case nordjylland
    case sjaelland
    case syddanmark
    
    public var country : Country {
        return Country.denmark
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public var real_name : String? {
        switch self {
        case .sjaelland: return "Sjælland"
        default: return nil
        }
    }
    
    public func getWikipediaURLPrefix() -> String? {
        return "Region_"
    }
    
    public func getWikipediaURLSuffix() -> String? {
        return nil
    }
    
    public var neighbors : [any SovereignStateSubdivision]? {
        switch self {
        case .hovedstaden:
            return [SubdivisionsDenmark.sjaelland]
        case .midtjylland:
            return [SubdivisionsDenmark.nordjylland, SubdivisionsDenmark.syddanmark]
        case .nordjylland:
            return [SubdivisionsDenmark.midtjylland]
        case .sjaelland:
            return [SubdivisionsDenmark.hovedstaden, SubdivisionsDenmark.syddanmark, SubdivisionsDenmark.syddanmark]
        case .syddanmark:
            return [SubdivisionsDenmark.midtjylland, SubdivisionsDenmark.sjaelland]
        }
    }
}
