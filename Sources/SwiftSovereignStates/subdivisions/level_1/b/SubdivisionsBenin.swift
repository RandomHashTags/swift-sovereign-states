//
//  SubdivisionsBenin.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public enum SubdivisionsBenin : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Departments_of_Benin
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
    
    public var country : Country {
        return Country.benin
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.departments
    }
    
    public var real_name : String? {
        switch self {
        case .oueme: return "Ouémé"
        default: return nil
        }
    }
}
