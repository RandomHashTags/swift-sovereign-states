//
//  SubdivisionsEthiopia.swift
//  
//
//  Created by Evan Anderson on 7/26/22.
//

import Foundation

public enum SubdivisionsEthiopia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Subdivisions_of_Ethiopia
    case afar
    case amhara
    case benishangul_gumuz
    case gambela
    case harari
    case oromia
    case sidama
    case somali
    case south_west
    case southern_nations_nationalities_and_peoples_region
    case tigray
    
    case addis_ababa
    case dire_dawa
    
    public var country : Country {
        return Country.ethiopia
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .addis_ababa,
                .dire_dawa:
            return SovereignStateSubdivisionType.chartered_cities
        default:
            return SovereignStateSubdivisionType.states
        }
    }
    
    public func getConditionalName() -> String? {
        switch self {
        case .south_west:
            return "South West Ethiopia"
        default:
            return nil
        }
    }
    
    public var real_name : String? {
        switch self {
        case .benishangul_gumuz: return "Benishangul-Gumuz"
        case .southern_nations_nationalities_and_peoples_region: return "Southern Nations, Nationalities, and Peoples'"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .oromia,
                .addis_ababa,
                .dire_dawa:
            return nil
        default:
            return "_Region"
        }
    }
}
