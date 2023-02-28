//
//  CountiesUnitedStatesMassachusetts.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesMassachusetts : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Massachusetts
    case barnstable
    case berkshire
    case bristol
    case dukes
    case essex
    case franklin
    case hampden
    case hampshire
    case middlesex
    case nantucket
    case norfolk
    case plymouth
    case suffolk
    case worcester
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.massachusetts
    }
    
    public var fips_code : Int {
        switch self {
        case .barnstable: return 001
        case .berkshire: return 003
        case .bristol: return 005
        case .dukes: return 007
        case .essex: return 009
        case .franklin: return 011
        case .hampden: return 013
        case .hampshire: return 015
        case .middlesex: return 017
        case .nantucket: return 019
        case .norfolk: return 021
        case .plymouth: return 023
        case .suffolk: return 025
        case .worcester: return 027
        }
    }
}
