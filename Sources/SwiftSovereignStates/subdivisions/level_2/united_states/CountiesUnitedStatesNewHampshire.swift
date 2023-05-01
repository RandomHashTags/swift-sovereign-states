//
//  CountiesUnitedStatesNewHampshire.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesNewHampshire : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_New_Hampshire
    case belknap
    case carroll
    case cheshire
    case coos
    case grafton
    case hillsborough
    case merrimack
    case rockingham
    case strafford
    case sullivan
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.new_hampshire
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var fips_code : Int {
        switch self {
        case .belknap: return 001
        case .carroll: return 003
        case .cheshire: return 005
        case .coos: return 007
        case .grafton: return 009
        case .hillsborough: return 011
        case .merrimack: return 013
        case .rockingham: return 015
        case .strafford: return 017
        case .sullivan: return 019
        }
    }
}
