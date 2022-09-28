//
//  SubdivisionsBolivia.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public enum SubdivisionsBolivia : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Departments_of_Bolivia
    case beni
    case chuquisaca
    case cochabamba
    case la_paz
    case oruro
    case pando
    case potosi
    case santa_cruz
    case tarija
    
    public func getCountry() -> Country {
        return Country.bolivia
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.departments
    }
    
    public func getRealName() -> String? {
        switch self {
        case .potosi: return "Potosí"
        default: return nil
        }
    }
}
