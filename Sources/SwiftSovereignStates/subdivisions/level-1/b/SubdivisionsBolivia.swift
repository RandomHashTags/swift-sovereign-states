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
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .beni: return "7/70/Flag_of_Beni"
        case .chuquisaca: return "1/18/Flag_of_Chuquisaca"
        case .cochabamba: return "f/f0/Flag_of_Cochabamba"
        case .la_paz: return "1/12/Bandera_de_La_Paz"
        case .oruro: return "0/06/Flag_of_Oruro"
        case .pando: return "9/9f/Flag_of_Pando"
        case .potosi: return "4/48/Flag_of_Potos%C3%AD"
        case .santa_cruz: return "f/f1/Flag_of_Santa_Cruz"
        case .tarija: return "9/94/Flag_of_Tarija"
        }
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
