//
//  CountiesUnitedStatesConnecticut.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesConnecticut : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Connecticut
    case fairfield
    case hartford
    case litchfield
    case middlesex
    case new_haven
    case new_london
    case tolland
    case windham
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.connecticut
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var fips_code : Int {
        switch self {
        case .fairfield: return 001
        case .hartford: return 003
        case .litchfield: return 005
        case .middlesex: return 007
        case .new_haven: return 009
        case .new_london: return 011
        case .tolland: return 013
        case .windham: return 015
        }
    }
}
