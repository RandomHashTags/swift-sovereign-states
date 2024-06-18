//
//  SubdivisionsGambia.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation

public enum SubdivisionsGambia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Subdivisions_of_the_Gambia
    case banjul
    case central_river
    case lower_river
    case north_bank
    case upper_river
    case west_coast
    
    public var country : Locale.Region {
        return Locale.Region.gambia
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .banjul:
            return SovereignStateSubdivisionType.cities
        default:
            return SovereignStateSubdivisionType.regions
        }
    }
}
