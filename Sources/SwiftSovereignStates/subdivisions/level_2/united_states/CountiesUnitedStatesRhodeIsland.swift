//
//  CountiesUnitedStatesRhodeIsland.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesRhodeIsland : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Rhode_Island
    case bristol
    case kent
    case newport
    case providence
    case washington
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.rhode_island
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var fips_code : Int {
        switch self {
        case .bristol: return 001
        case .kent: return 003
        case .newport: return 005
        case .providence: return 007
        case .washington: return 009
        }
    }
}
