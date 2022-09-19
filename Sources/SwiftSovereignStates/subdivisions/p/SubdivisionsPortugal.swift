//
//  SubdivisionsPortugal.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsPortugal : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Portugal
    case acores
    case aveiro
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
    case maderia
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
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
    
    public func getRealName() -> String? {
        switch self {
        case .acores: return "Açores"
        case .braganca: return "Bragança"
        case .evora: return "Évora"
        case .santarem: return "Santarém"
        case .setubal: return "Setúbal"
        default: return nil
        }
    }
}
