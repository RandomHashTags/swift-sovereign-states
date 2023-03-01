//
//  CountiesUnitedStatesHawaii.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesHawaii : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Hawaii
    case hawaii
    case honolulu
    case kalawao
    case kauai
    case maui
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.hawaii
    }
    
    public var fips_code : Int {
        switch self {
        case .hawaii: return 001
        case .honolulu: return 003
        case .kalawao: return 005
        case .kauai: return 007
        case .maui: return 009
        }
    }
}
