//
//  CountiesUnitedStatesArizona.swift
//  
//
//  Created by Evan Anderson on 2/28/23.
//

import Foundation

public enum CountiesUnitedStatesArizona : String, SovereignStateLevel2Division { // https://en.wikipedia.org/wiki/List_of_counties_in_Arizona
    case apache
    case cochise
    case coconino
    case gila
    case graham
    case greenlee
    case la_paz
    case maricopa
    case mohave
    case navajo
    case pima
    case pinal
    case santa_cruz
    case yavapai
    case yuma
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.arizona
    }
    
    public var type : SovereignStateLevel2DivisionType {
        return SovereignStateLevel2DivisionType.counties
    }
    
    public var fips_code : Int {
        switch self {
        case .apache: return 001
        case .cochise: return 003
        case .coconino: return 005
        case .gila: return 007
        case .graham: return 009
        case .greenlee: return 011
        case .la_paz: return 012
        case .maricopa: return 013
        case .mohave: return 015
        case .navajo: return 017
        case .pima: return 019
        case .pinal: return 021
        case .santa_cruz: return 023
        case .yavapai: return 025
        case .yuma: return 027
        }
    }
}
