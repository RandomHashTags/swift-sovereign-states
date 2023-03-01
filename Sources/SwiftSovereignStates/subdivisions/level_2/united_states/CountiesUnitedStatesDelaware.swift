//
//  CountiesUnitedStatesDelaware.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesDelaware : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Delaware
    case kent
    case new_castle
    case sussex
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.delaware
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var fips_code : Int {
        switch self {
        case .kent: return 001
        case .new_castle: return 003
        case .sussex: return 005
        }
    }
}
