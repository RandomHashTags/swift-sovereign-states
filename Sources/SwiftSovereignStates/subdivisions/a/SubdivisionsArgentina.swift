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
    
    public func getCountry() -> Country {
        return Country.argentina
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public func getType() -> SovereignStateSubdivisionType? {
        switch self {
        case .buenos_aires:
            return .autonomous_cities
        default:
            return nil
        }
    }
    
    public func getConditionalName() -> String? {
        switch self {
        case .tierra_del_fuego_antartida_e_islas_del_atlantico_sur:
            return "Tierra del Fuego"
        default:
            return nil
        }
    }
    
    public func getRealName() -> String? {
        switch self {
        case .buenos_aires: return "Buenos Aires"
        case .cordoba: return "Córdoba"
        case .neuquen: return "Neuquén"
        case .rio_negreo: return "Río Negro"
        case .tierra_del_fuego_antartida_e_islas_del_atlantico_sur: return "Tierra del Fuego, Antártida e Islas del Atlántico Sur"
        case .tucuman: return "Tucumán"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix(typeSuffix: String) -> String? {
        switch self {
        case .cordoba,
                .la_rioja,
                .san_juan,
                .santa_cruz,
                .tierra_del_fuego_antartida_e_islas_del_atlantico_sur:
            return typeSuffix + ",_Argentina"
        default:
            return nil
        }
    }
    
    public func getFlagURLWikipediaSVGID() -> String? {
        switch self {
        case .autonomous_city_of_buenos_aires: return "f/f5/Bandera_de_la_Ciudad_de_Buenos_Aires"
        case .buenos_aires: return "1/15/Bandera_de_la_Provincia_de_Buenos_Aires"
        case .catamarca: return "7/7b/Bandera_de_la_Provincia_de_Catamarca"
        case .chaco: return "3/33/Bandera_de_la_Provincia_del_Chaco"
        case .chubut: return "8/88/Bandera_de_la_Provincia_del_Chubut"
        case .cordoba: return "f/f6/Bandera_de_la_Provincia_de_Córdoba_2014"
        case .corrientes: return "4/46/Bandera_de_la_Provincia_de_Corrientes"
        case .entre_rios: return "5/5b/Bandera_de_la_Provincia_de_Entre_R%C3%ADos"
        case .formosa: return "4/42/Bandera_de_la_Provincia_de_Formosa"
        case .jujuy: return "c/c9/Bandera_de_la_Provincia_de_Jujuy"
        case .la_pampa: return "8/81/Bandera_de_la_Provincia_de_La_Pampa"
        case .la_rioja: return "6/60/Bandera_de_la_Provincia_de_La_Rioja"
        case .mendoza: return "7/7c/Bandera_de_la_Provincia_de_Mendoza"
        case .misiones: return "c/ce/Bandera_de_la_Provincia_de_Misiones"
        case .neuquen: return "b/bc/Bandera_de_la_Provincia_de_Neuquén"
        case .rio_negreo: return "5/5d/Bandera_de_la_Provincia_del_R%C3%ADo_Negro"
        case .salta: return "6/6a/Bandera_de_la_Provincia_de_Salta"
        case .san_juan: return "b/b0/Flag_of_the_San_Juan_Province"
        case .san_luis: return "0/0e/Bandera_de_la_Provincia_de_San_Luis"
        case .santa_cruz: return "4/45/Bandera_de_la_Provincia_de_Santa_Cruz"
        case .santa_fe: return "8/84/Bandera_de_la_Provincia_de_Santa_Fe"
        case .santiago_del_estero: return "0/07/Bandera_de_la_Provincia_de_Santiago_del_Estero"
        case .tierra_del_fuego_antartida_e_islas_del_atlantico_sur: return "9/94/Bandera_de_la_Provincia_de_Tierra_del_Fuego"
        case .tucuman: return "c/ce/Bandera_de_la_Provincia_de_Tucumán"
        }
    }
}
