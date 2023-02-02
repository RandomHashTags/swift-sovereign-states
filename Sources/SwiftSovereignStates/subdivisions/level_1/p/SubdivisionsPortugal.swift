//
//  SubdivisionsPortugal.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsPortugal : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Portugal
    case aveiro
    case azores
    case beja
    case braga
    case braganca
    case castelo_branco
    case coimbra
    case evora
    case faro
    case guarda
    case leiria
    case lisboa
    case madeira
    case portalegre
    case porto
    case santarem
    case setubal
    case viana_do_castelo
    case vila_real
    case viseu
    
    public func getCountry() -> Country {
        return Country.portugal
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        switch self {
        case .azores,
                .madeira:
            return SovereignStateSubdivisionType.autonomous_regions
        default:
            return SovereignStateSubdivisionType.districts
        }
    }
    
    public var real_name : String? {
        switch self {
        case .braganca: return "Bragança"
        case .evora: return "Évora"
        case .santarem: return "Santarém"
        case .setubal: return "Setúbal"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .azores,
                .madeira:
            return nil
        default:
            return "_" + getTypeSuffix()
        }
    }
}
