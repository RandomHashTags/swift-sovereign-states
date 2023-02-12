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
    
    public var country: Country {
        return Country.guinea
    }
    
    public var type: SovereignStateSubdivisionType {
        switch self {
        case .conakry:
            return SovereignStateSubdivisionType.special_cities
        default:
            return SovereignStateSubdivisionType.regions
        }
    }
    
    public var real_name: String? {
        switch self {
        case .boke: return "Boké"
        case .labe: return "Labé"
        case .nzerekore: return "Nzérékoré"
        default: return nil
        }
    }
    
    public var wikipedia_url_suffix: String? {
        switch self {
        case .conakry:
            return nil
        default:
            return "_Region"
        }
    }
}
