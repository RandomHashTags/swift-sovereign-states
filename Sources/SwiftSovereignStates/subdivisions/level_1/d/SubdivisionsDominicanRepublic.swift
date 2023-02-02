//
//  SubdivisionsDominicanRepublic.swift
//  
//
//  Created by Evan Anderson on 7/26/22.
//

import Foundation

public enum SubdivisionsDominicanRepublic : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_the_Dominican_Republic
    case azua
    case baoruco
    case barahona
    case dajabon
    case distrito_nacional
    case duarte
    case el_seibo
    case elias_pina
    case espaillat
    case hato_mayor
    case hermanas_mirabal
    case independencia
    case la_altagracia
    case la_romana
    case la_vega
    case maria_trinidad_sanchez
    case monsenor_nouel
    case monte_cristi
    case monte_plata
    case pedernales
    case peravia
    case puerto_plata
    case samana
    case san_cristobal
    case san_jose_de_ocoa
    case san_juan
    case san_pedro_de_macoris
    case sanchez_ramirez
    case santiago
    case santiago_rodriguez
    case santo_domingo
    case valverde
    
    public var country : Country {
        return Country.dominican_republic
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public func getConditionalName() -> String? {
        switch self {
        case .distrito_nacional:
            return "Distrito Nacional"
        default:
            return nil
        }
    }
    
    public var real_name : String? {
        switch self {
        case .dajabon: return "Dajabón"
        case .elias_pina: return "Elías Piña"
        case .maria_trinidad_sanchez: return "María Trinidad Sánchez"
        case .monsenor_nouel: return "Monseñor Nouel"
        case .samana: return "Samaná"
        case .san_cristobal: return "San Cristóbal"
        case .san_jose_de_ocoa: return "San José de Ocoa"
        case .san_pedro_de_macoris: return "San Pedro de Macorís"
        case .sanchez_ramirez: return "Sánchez Ramírez"
        case .santiago_rodriguez: return "Santiago Rodríguez"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .la_romana:
            return ",_Dominican_Republic"
        case .san_juan,
                .santiago:
            return "_(Dominican_Republic)"
        default:
            return nil
        }
    }
}
