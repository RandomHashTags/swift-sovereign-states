//
//  SubdivisionsColombia.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation

public enum SubdivisionsColombia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Departments_of_Colombia
    case amazonas
    case antioquia
    case arauca
    case atlantico
    case bolivar
    case boyaca
    case caldas
    case caqueta
    case casanare
    case cauca
    case cesar
    case choco
    case cordoba
    case cundinamarca
    case guainia
    case guaviare
    case huila
    case la_guajira
    case magdalena
    case meta
    case narino
    case norte_de_santander
    case putumayo
    case quindio
    case risaralda
    case san_andres_y_providencia // TODO: fix wikipedia url
    case santander
    case sucre
    case toluma
    case valle_del_cauca
    case vaupes
    case vichada
    
    case bogota
    
    public var country : Locale.Region {
        return Locale.Region.colombia
    }
    
    public var type : Locale.Region.SubdivisionType {
        switch self {
        case .bogota:
            return Locale.Region.SubdivisionType.cities
        default:
            return Locale.Region.SubdivisionType.departments
        }
    }
}
