//
//  CountiesUnitedStatesAlaska.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesAlaska : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_boroughs_and_census_areas_in_Alaska
    case aleutians_east
    case anchorage
    case bristol_bay
    case denali
    case fairbanks_north_star
    case haines
    case juneau
    case kenai_peninsula
    case ketchikan_gateway
    case kodiak_island
    case lake_and_peninsula
    case matanuska_susitna
    case north_slope
    case northwest_arctic
    case petersburg
    case sitka
    case skagway
    case unorganized
    case wrangell
    case yakutat
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.alaska
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.boroughs
    }
    
    public var fips_code : Int {
        switch self {
        case .aleutians_east: return 013
        case .anchorage: return 020
        case .bristol_bay: return 060
        case .denali: return 068
        case .fairbanks_north_star: return 090
        case .haines: return 100
        case .juneau: return 110
        case .kenai_peninsula: return 122
        case .ketchikan_gateway: return 130
        case .kodiak_island: return 150
        case .lake_and_peninsula: return 164
        case .matanuska_susitna: return 170
        case .north_slope: return 185
        case .northwest_arctic: return 188
        case .petersburg: return 195
        case .sitka: return 220
        case .skagway: return 230
        case .unorganized: return -1 // TODO: fix?
        case .wrangell: return 275
        case .yakutat: return 282
        }
    }
}
