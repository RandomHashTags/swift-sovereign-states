//
//  CountiesUnitedStatesMaine.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesMaine : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Maine
    case androscoggin
    case aroostook
    case cumberland
    case franklin
    case hancock
    case kennebec
    case knox
    case lincoln
    case oxford
    case penobscot
    case piscataquis
    case sagadahoc
    case somerset
    case waldo
    case washington
    case york
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.maine
    }
    
    public var fips_code : Int {
        switch self {
        case .androscoggin: return 001
        case .aroostook: return 003
        case .cumberland: return 005
        case .franklin: return 007
        case .hancock: return 009
        case .kennebec: return 011
        case .knox: return 013
        case .lincoln: return 015
        case .oxford: return 017
        case .penobscot: return 019
        case .piscataquis: return 021
        case .sagadahoc: return 023
        case .somerset: return 025
        case .waldo: return 027
        case .washington: return 029
        case .york: return 031
        }
    }
}
