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
    
    public var country : Locale.Region {
        return Locale.Region.israel
    }
    
    public var type : Locale.Region.SubdivisionType {
        switch self {
        case .judea_and_samaria: return Locale.Region.SubdivisionType.administrative_areas
        default: return Locale.Region.SubdivisionType.districts
        }
    }
}
