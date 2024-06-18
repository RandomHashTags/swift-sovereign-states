//
//  SubdivisionsParaguay.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public enum SubdivisionsParaguay : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Departments_of_Paraguay
    case alto_paraguay
    case alto_parana
    case amambay
    case boqueron
    case caaguazu
    case caazapa
    case canindeyu
    case central
    case concepcion
    case cordillera
    case guaira
    case itapua
    case misiones
    case neembucu
    case paraguari
    case presidente_hayes
    case san_pedro
    
    case asuncion
    
    public var country : Locale.Region {
        return Locale.Region.paraguay
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .asuncion:
            return SovereignStateSubdivisionType.cities
        default:
            return SovereignStateSubdivisionType.departments
        }
    }
}
