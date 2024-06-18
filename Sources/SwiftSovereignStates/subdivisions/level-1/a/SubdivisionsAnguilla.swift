//
//  SubdivisionsAnguilla.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation

public enum SubdivisionsAnguilla : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Geography_of_Anguilla#Districts
    case blowing_point
    case east_end
    case george_hill
    case island_harbour
    case north_hill
    case north_side
    case sandy_ground
    case sandy_hill
    case south_hill
    case stoney_ground
    case the_farrington
    case the_quarter
    case the_valley
    case west_end
    
    public var country : Locale.Region {
        return Locale.Region.anguilla
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .stoney_ground,
                .the_farrington:
            return nil
        default:
            return ",_Anguilla"
        }
    }
}
