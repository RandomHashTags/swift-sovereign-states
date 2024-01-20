//
//  CountiesUnitedStatesNevada.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesNevada : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Nevada
    case carson_city
    case churchill
    case clark
    case douglas
    case elko
    case esmeralda
    case eureka
    case humboldt
    case lander
    case lincoln
    case lyon
    case mineral
    case nye
    case pershing
    case storey
    case washoe
    case white_pine
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.nevada
    }
    
    public var type : SovereignStateLevel2DivisionType {
        switch self {
        case .carson_city:
            return SovereignStateLevel2DivisionType.independent_cities
        default:
            return SovereignStateLevel2DivisionType.counties
        }
    }
    
    public var fips_code : Int {
        switch self {
        case .carson_city: return 510
        case .churchill: return 001
        case .clark: return 003
        case .douglas: return 005
        case .elko: return 007
        case .esmeralda: return 009
        case .eureka: return 011
        case .humboldt: return 013
        case .lander: return 015
        case .lincoln: return 017
        case .lyon: return 019
        case .mineral: return 021
        case .nye: return 023
        case .pershing: return 027
        case .storey: return 029
        case .washoe: return 031
        case .white_pine: return 033
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .carson_city:
            return ",_Nevada"
        default:
            return default_wikipedia_url_suffix
        }
    }
}
