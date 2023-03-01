//
//  CountiesUnitedStatesNewMexico.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesNewMexico : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_New_Mexico
    case bernalillo
    case catron
    case chaves
    case cibola
    case colfax
    case curry
    case de_baca
    case dona_ana
    case eddy
    case grant
    case guadalupe
    case harding
    case hidalgo
    case lea
    case lincoln
    case los_alamos
    case luna
    case mckinley
    case mora
    case otero
    case quay
    case rio_arriba
    case roosevelt
    case san_juan
    case san_miguel
    case sandoval
    case santa_fe
    case sierra
    case socorro
    case taos
    case torrance
    case union
    case valencia
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.new_mexico
    }
    
    public var real_name : String? {
        switch self {
        case .dona_ana: return "Doña Ana"
        default: return nil
        }
    }
    
    public var fips_code: Int {
        switch self {
        case .bernalillo: return 001
        case .catron: return 003
        case .chaves: return 005
        case .cibola: return 006
        case .colfax: return 007
        case .curry: return 009
        case .de_baca: return 011
        case .dona_ana: return 013
        case .eddy: return 015
        case .grant: return 017
        case .guadalupe: return 019
        case .harding: return 021
        case .hidalgo: return 023
        case .lea: return 025
        case .lincoln: return 027
        case .los_alamos: return 028
        case .luna: return 029
        case .mckinley: return 031
        case .mora: return 033
        case .otero: return 035
        case .quay: return 037
        case .rio_arriba: return 039
        case .roosevelt: return 041
        case .san_juan: return 045
        case .san_miguel: return 047
        case .sandoval: return 043
        case .santa_fe: return 049
        case .sierra: return 051
        case .socorro: return 053
        case .taos: return 055
        case .torrance: return 057
        case .union: return 059
        case .valencia: return 061
        }
    }
}
