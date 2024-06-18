//
//  SubdivisionsArgentina.swift
//  
//
//  Created by Evan Anderson on 6/21/22.
//

import Foundation

public enum SubdivisionsArgentina : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Argentina
    case autonomous_city_of_buenos_aires
    case buenos_aires
    case catamarca
    case chaco
    case chubut
    case cordoba
    case corrientes
    case entre_rios
    case formosa
    case jujuy
    case la_pampa
    case la_rioja
    case mendoza
    case misiones
    case neuquen
    case rio_negreo
    case salta
    case san_juan
    case san_luis
    case santa_cruz
    case santa_fe
    case santiago_del_estero
    case tierra_del_fuego_antartida_e_islas_del_atlantico_sur
    case tucuman
    
    public var country : Locale.Region {
        return Locale.Region.argentina
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .buenos_aires:
            return SovereignStateSubdivisionType.autonomous_cities
        default:
            return SovereignStateSubdivisionType.provinces
        }
    }
}
