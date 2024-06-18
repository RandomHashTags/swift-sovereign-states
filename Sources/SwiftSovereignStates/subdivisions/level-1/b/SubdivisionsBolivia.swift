//
//  SubdivisionsBolivia.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public enum SubdivisionsBolivia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Departments_of_Bolivia
    case beni
    case chuquisaca
    case cochabamba
    case la_paz
    case oruro
    case pando
    case potosi
    case santa_cruz
    case tarija
    
    public var country : Locale.Region {
        return Locale.Region.bolivia
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.departments
    }
    
    public var isoAlpha2 : String? {
        switch self {
        case .beni: return "B"
        case .chuquisaca: return "H"
        case .cochabamba: return "C"
        case .la_paz: return "L"
        case .oruro: return "O"
        case .pando: return "N"
        case .potosi: return "P"
        case .santa_cruz: return "S"
        case .tarija: return "T"
        }
    }
}
