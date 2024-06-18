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
    
    public var country : Locale.Region {
        return Locale.Region.niger
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .niamey:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
