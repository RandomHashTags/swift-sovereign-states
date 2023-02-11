//
//  SubdivisionsGuatemala.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsGuatemala : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Departments_of_Guatemala
    case alta_verapaz
    case baja_verapaz
    case chimaltenango
    case chiquimula
    case el_progreso
    case escuintla
    case guatemala
    case huehuetenango
    case izabal
    case jalapa
    case peten
    case quetzaltenango
    case quiche
    case retalhuleu
    case sacatepequez
    case san_marcos
    case santa_rosa
    case solola
    case suchitepequez
    case totonicapan
    case zacapa
    
    public var country : Country {
        return Country.guatemala
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.departments
    }
    
    public var real_name : String? {
        switch self {
        case .peten: return "Petén"
        case .quiche: return "Quiché"
        case .sacatepequez: return "Sacatepéquez"
        case .solola: return "Sololá"
        case .suchitepequez: return "Suchitepéquez"
        case .totonicapan: return "Totonicapán"
        default: return nil
        }
    }
    
    public var wikipedia_url_suffix : String? {
        switch self {
        case .santa_rosa:
            return ",_Guatemala"
        default:
            return "_" + getTypeSuffix()
        }
    }
}
