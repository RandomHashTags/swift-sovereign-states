//
//  SubdivisionsCameroon.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public enum SubdivisionsCameroon : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Cameroon
    case adamawa
    case centre
    case east
    case far_north
    case littoral
    case north
    case nortwest
    case south
    case southwest
    case west
    
    public var country : Locale.Region {
        return Locale.Region.cameroon
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .centre,
                .east,
                .north,
                .nortwest,
                .south,
                .southwest,
                .west:
            return "_" + type_suffix + "_(Cameroon)"
        case .far_north:
            return "_" + type_suffix + ",_Cameroon"
        default:
            return "_" + type_suffix
        }
    }
}
