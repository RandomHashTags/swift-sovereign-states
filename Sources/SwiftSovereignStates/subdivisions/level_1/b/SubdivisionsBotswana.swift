//
//  SubdivisionsBotswana.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public enum SubdivisionsBotswana : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Botswana
    case central
    case chobe
    case ghanzi
    case kgalagadi
    case kgatleng
    case kweneng
    case ngamiland
    case north_east
    case south_east
    case southern
    
    case francistown
    case gaborone
    
    case jwaneng
    case lobatse
    case orapa
    case selebi_phikwe
    case sowa
    
    public func getCountry() -> Country {
        return Country.botswana
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
    
    public func getRealName() -> String? {
        switch self {
        case .north_east: return "North-East"
        case .south_east: return "South-East"
            
        case .selebi_phikwe: return "Selebi-Phikwe"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .central, .north_east, .south_east, .southern:
            return "_" + getTypeSuffix() + "_(Botswana)"
        case .francistown, .gaborone,
                .jwaneng, .lobatse, .orapa, .selebi_phikwe:
            return nil
        case .sowa:
            return ",_Botswana"
        default:
            return "_" + getTypeSuffix()
        }
    }
}
