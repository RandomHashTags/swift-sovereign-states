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
    
    public var country : Locale.Region {
        return Locale.Region.guatemala
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.departments
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .santa_rosa:
            return ",_Guatemala"
        default:
            return "_" + type_suffix
        }
    }
}
