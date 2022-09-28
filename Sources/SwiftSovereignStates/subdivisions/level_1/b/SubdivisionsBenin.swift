//
//  SubdivisionsBenin.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public enum SubdivisionsBenin : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Departments_of_Benin
    case alibori
    case atakora
    case atlantique
    case borgou
    case collines
    case donga
    case kouffo
    case littoral
    case mono
    case oueme
    case plateau
    case zou
    
    public func getCountry() -> Country {
        return Country.benin
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.departments
    }
    
    public func getRealName() -> String? {
        switch self {
        case .oueme: return "Ouémé"
        default: return nil
        }
    }
}
