//
//  CountiesUnitedStatesUtah.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesUtah : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Utah
    case beaver
    case box_elder
    case cache
    case carbon
    case daggett
    case davis
    case duchesne
    case emery
    case garfield
    case grand
    case iron
    case juab
    case kane
    case millard
    case morgan
    case piute
    case rich
    case salt_lake
    case san_juan
    case sanpete
    case sevier
    case summit
    case tooele
    case uintah
    case utah
    case wasatch
    case washington
    case wayne
    case weber
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.utah
    }
    
    public var fips_code : Int {
        switch self {
        case .beaver: return 001
        case .box_elder: return 003
        case .cache: return 005
        case .carbon: return 007
        case .daggett: return 009
        case .davis: return 011
        case .duchesne: return 013
        case .emery: return 015
        case .garfield: return 017
        case .grand: return 019
        case .iron: return 021
        case .juab: return 023
        case .kane: return 025
        case .millard: return 027
        case .morgan: return 029
        case .piute: return 031
        case .rich: return 033
        case .salt_lake: return 035
        case .san_juan: return 037
        case .sanpete: return 039
        case .sevier: return 041
        case .summit: return 043
        case .tooele: return 045
        case .uintah: return 047
        case .utah: return 049
        case .wasatch: return 051
        case .washington: return 053
        case .wayne: return 055
        case .weber: return 057
        }
    }
}
