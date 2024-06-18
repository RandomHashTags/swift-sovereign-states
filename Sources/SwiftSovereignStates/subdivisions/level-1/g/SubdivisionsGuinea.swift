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
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .conakry:
            return SovereignStateSubdivisionType.special_cities
        default:
            return SovereignStateSubdivisionType.regions
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .conakry:
            return nil
        default:
            return "_Region"
        }
    }
}
