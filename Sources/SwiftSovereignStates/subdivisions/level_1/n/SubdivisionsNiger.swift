//
//  SubdivisionsNiger.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsNiger : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Niger
    case agadez
    case diffa
    case dosso
    case maradi
    case niamey
    case tahoua
    case tillaberi
    case zinder
    
    public var country : Country {
        return Country.niger
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public var real_name : String? {
        switch self {
        case .tillaberi: return "Tillabéri"
        default: return nil
        }
    }
    
    public var wikipedia_url_suffix : String? {
        switch self {
        case .niamey:
            return nil
        default:
            return "_" + getTypeSuffix()
        }
    }
}
