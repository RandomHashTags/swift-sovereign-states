//
//  SubdivisionsIsrael.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public enum SubdivisionsIsrael : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Israel
    case central
    case haifa
    case jerusalem
    case northern
    case southern
    case tel_aviv
    
    case judea_and_samaria
    
    public var country : Country {
        return Country.israel
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .judea_and_samaria: return SovereignStateSubdivisionType.administrative_areas
        default: return SovereignStateSubdivisionType.districts
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .judea_and_samaria:
            return "_Area"
        default:
            return "_" + getTypeSuffix()
        }
    }
}
