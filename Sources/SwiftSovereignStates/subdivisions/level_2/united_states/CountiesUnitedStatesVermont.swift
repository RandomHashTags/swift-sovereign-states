//
//  CountiesUnitedStatesVermont.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesVermont : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Vermont
    case addison
    case bennington
    case caledonia
    case chittenden
    case essex
    case franklin
    case grand_isle
    case lamoille
    case orange
    case orleans
    case rutland
    case washington
    case windham
    case windsor
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.vermont
    }
    
    public var fips_code : Int {
        switch self {
        case .addison: return 001
        case .bennington: return 003
        case .caledonia: return 005
        case .chittenden: return 007
        case .essex: return 009
        case .franklin: return 011
        case .grand_isle: return 013
        case .lamoille: return 015
        case .orange: return 017
        case .orleans: return 019
        case .rutland: return 021
        case .washington: return 023
        case .windham: return 025
        case .windsor: return 027
        }
    }
}
