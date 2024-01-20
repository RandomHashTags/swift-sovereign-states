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
    
    public var country : Locale.Region {
        return Locale.Region.honduras
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.departments
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .colon,
                .la_paz:
            return "_" + type_suffix + "_(Honduras)"
        case .santa_barabara:
            return "_" + type_suffix + ",_Honduras"
        default:
            return nil
        }
    }
}
