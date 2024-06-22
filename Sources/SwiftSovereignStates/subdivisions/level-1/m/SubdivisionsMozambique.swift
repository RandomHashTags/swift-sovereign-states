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
    
    public var country : Locale.Region {
        return Locale.Region.mozambique
    }
    
    public var type : Locale.Region.SubdivisionType {
        switch self {
        case .maputo_city:
            return Locale.Region.SubdivisionType.cities
        default:
            return Locale.Region.SubdivisionType.provinces
        }
    }
}
