//
//  SubdivisionsGuatemala.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsGuatemala : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Departments_of_Guatemala
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
    case retalhueu
    case sacatepequez
    case san_marcos
    case santa_rosa
    case solola
    case suchitepequez
    case totonicapan
    case zacapa
    
    public func getCountry() -> Country {
        return Country.guatemala
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.departments
    }
    
    public func getRealName() -> String? {
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
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .santa_rosa:
            return ",_Guatemala"
        default:
            return nil
        }
    }
}
