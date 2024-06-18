//
//  SubdivisionsVenezuela.swift
//  
//
//  Created by Evan Anderson on 9/21/22.
//

import Foundation

public enum SubdivisionsVenezuela : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/States_of_Venezuela
    case amazonas
    case anzoategui
    case apure
    case aragua
    case barinas
    case bolivar
    case carabobo
    case cojedes
    case delta_amacuro
    case falcon
    case guarico
    case la_guaira
    case lara
    case merida
    case miranda
    case monagas
    case nueva_esparta
    case portuguesa
    case sucre
    case tachira
    case trujillo
    case yaracuy
    case zulia
    
    case capital_district
    
    public var country : Locale.Region {
        return Locale.Region.venezuela
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .capital_district:
            return SovereignStateSubdivisionType.federal_districts
        default:
            return SovereignStateSubdivisionType.states
        }
    }
}
