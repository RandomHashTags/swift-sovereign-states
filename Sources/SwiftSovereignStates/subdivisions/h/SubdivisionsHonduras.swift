//
//  SubdivisionsHonduras.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsHonduras : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Departments_of_Honduras
    case atlantida
    case choluteca
    case colon
    case comayagua
    case copan
    case cortes
    case el_paraiso
    case francisco_morazan
    case gracias_a_dios
    case intibuca
    case bay_islands
    case la_paz
    case lempira
    case ocotepeque
    case olancho
    case santa_barabara
    case valle
    case yoro
    
    public func getCountry() -> Country {
        return Country.honduras
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.departments
    }
    
    public func getRealName() -> String? {
        switch self {
        case .atlantida: return "Atlántida"
        case .colon: return "Colón"
        case .copan: return "Copán"
        case .cortes: return "Cortés"
        case .el_paraiso: return "El Paraíso"
        case .francisco_morazan: return "Francisco Morazán"
        case .gracias_a_dios: return "Gracias a Dios"
        case .intibuca: return "Intibucá"
        case .bay_islands: return "Bay Islands"
        case .santa_barabara: return "Santa Bárbara"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix(typeSuffix: String) -> String? {
        switch self {
        case .colon,
                .la_paz:
            return typeSuffix + "_(Honduras)";
        case .santa_barabara:
            return typeSuffix + ",_Honduras";
        default:
            return nil
        }
    }
}
