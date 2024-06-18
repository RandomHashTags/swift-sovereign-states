//
//  SubdivisionsSouthAfrica.swift
//  
//
//  Created by Evan Anderson on 2/14/23.
//

import Foundation

public enum SubdivisionsSouthAfrica : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_South_Africa
    case eastern_cape
    case free_state
    case gauteng
    case kwazulu_natal
    case limpopo
    case mpumalanga
    case north_west
    case northern_cape
    case western_cape
    
    public var country : Locale.Region {
        return Locale.Region.southAfrica
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .free_state:
            return "_(province)"
        case .north_west:
            return "_(South_African_province)"
        default:
            return nil
        }
    }
}
