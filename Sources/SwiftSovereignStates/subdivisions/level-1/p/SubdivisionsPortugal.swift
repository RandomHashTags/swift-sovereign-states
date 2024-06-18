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
    case lisbon
    case madeira
    case portalegre
    case porto
    case santarem
    case setubal
    case viana_do_castelo
    case vila_real
    case viseu
    
    public var country : Locale.Region {
        return Locale.Region.portugal
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .azores,
                .madeira:
            return SovereignStateSubdivisionType.autonomous_regions
        default:
            return SovereignStateSubdivisionType.districts
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .azores,
                .madeira:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
