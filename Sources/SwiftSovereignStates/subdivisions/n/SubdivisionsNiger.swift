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
    
    public func getCountry() -> Country {
        return Country.niger
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public func getRealName() -> String? {
        switch self {
        case .tillaberi: return "Tillabéri"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix(typeSuffix: String) -> String? {
        switch self {
        case .niamey:
            return nil
        default:
            return "_" + typeSuffix
        }
    }
}
