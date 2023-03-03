//
//  SubdivisionsMozambique.swift
//  
//
//  Created by Evan Anderson on 2/12/23.
//

import Foundation

public enum SubdivisionsMozambique : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Mozambique
    case cabo_delgado
    case gaza
    case inhambane
    case manica
    case maputo
    case maputo_city
    case nampula
    case niassa
    case sofala
    case tete
    case zambezia
    
    public var country : Country {
        return Country.mozambique
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .maputo_city:
            return SovereignStateSubdivisionType.cities
        default:
            return SovereignStateSubdivisionType.provinces
        }
    }
    
    public var real_name : String? {
        switch self {
        case .maputo_city:
            return "Maputo"
        default:
            return nil
        }
    }
    
    public var wikipedia_url_suffix : String? {
        switch self {
        case .maputo_city:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
