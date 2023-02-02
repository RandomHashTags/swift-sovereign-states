//
//  SubdivisionsRwanda.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsRwanda : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Rwanda
    case eastern
    case kigali
    case northern
    case southern
    case western
    
    public var country : Country {
        return Country.rwanda
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .kigali:
            return nil
        default:
            return "_" + getTypeSuffix() + ",_Rwanda"
        }
    }
}
