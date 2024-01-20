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
    
    public var country : Locale.Region {
        return Locale.Region.rwanda
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .kigali:
            return nil
        default:
            return "_" + type_suffix + ",_Rwanda"
        }
    }
}
