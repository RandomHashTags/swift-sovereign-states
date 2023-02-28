//
//  CountiesUnitedStatesWyoming.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesWyoming : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Wyoming
    case albany
    case big_horn
    case campbell
    case carbon
    case converse
    case crook
    case fremont
    case goshen
    case hot_springs
    case johnson
    case laramie
    case lincoln
    case natrona
    case niobrara
    case park
    case platte
    case sheridan
    case sublette
    case sweetwater
    case teton
    case uinta
    case washakie
    case weston
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.wyoming
    }
    
    public var fips_code : Int {
        switch self {
        case .albany: return 001
        case .big_horn: return 003
        case .campbell: return 005
        case .carbon: return 007
        case .converse: return 009
        case .crook: return 011
        case .fremont: return 013
        case .goshen: return 015
        case .hot_springs: return 017
        case .johnson: return 019
        case .laramie: return 021
        case .lincoln: return 023
        case .natrona: return 025
        case .niobrara: return 027
        case .park: return 029
        case .platte: return 031
        case .sheridan: return 033
        case .sublette: return 035
        case .sweetwater: return 037
        case .teton: return 039
        case .uinta: return 041
        case .washakie: return 043
        case .weston: return 045
        }
    }
}
