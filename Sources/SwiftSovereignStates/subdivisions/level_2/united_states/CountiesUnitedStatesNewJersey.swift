//
//  CountiesUnitedStatesNewJersey.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesNewJersey : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_New_Jersey
    case atlantic
    case bergen
    case burlington
    case camden
    case cape_may
    case cumberland
    case essex
    case gloucester
    case hudson
    case hunterdon
    case mercer
    case middlesex
    case monmouth
    case morris
    case ocean
    case passaic
    case salem
    case somerset
    case sussex
    case union
    case warren
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.new_jersey
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var fips_code : Int {
        switch self {
        case .atlantic: return 001
        case .bergen: return 003
        case .burlington: return 005
        case .camden: return 007
        case .cape_may: return 009
        case .cumberland: return 011
        case .essex: return 013
        case .gloucester: return 015
        case .hudson: return 017
        case .hunterdon: return 019
        case .mercer: return 021
        case .middlesex: return 023
        case .monmouth: return 025
        case .morris: return 027
        case .ocean: return 029
        case .passaic: return 031
        case .salem: return 033
        case .somerset: return 035
        case .sussex: return 037
        case .union: return 039
        case .warren: return 041
        }
    }
}
