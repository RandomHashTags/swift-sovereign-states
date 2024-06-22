//
//  SubdivisionsGuinea.swift
//  
//
//  Created by Evan Anderson on 2/12/23.
//

import Foundation

public enum SubdivisionsGuinea : String, SovereignStateSubdivision {
    case boke
    case faranah
    case kankan
    case kindia
    case labe
    case mamou
    case nzerekore
    
    case conakry
    
    public var country : Locale.Region {
        return Locale.Region.guinea
    }
    
    public var type : Locale.Region.SubdivisionType {
        switch self {
        case .conakry:
            return Locale.Region.SubdivisionType.special_cities
        default:
            return Locale.Region.SubdivisionType.regions
        }
    }
}
