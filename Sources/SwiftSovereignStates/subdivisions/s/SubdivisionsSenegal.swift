//
//  SubdivisionsSenegal.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsSenegal : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Senegal
    case dakar
    case diourbel
    case fatick
    case kaffrine
    case kaolack
    case kedougou
    case kolda
    case louga
    case matam
    case saint_louis
    case sedhiou
    case tambacounda
    case thies
    case ziguinchor
    
    public func getCountry() -> Country {
        return Country.senegal
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public func getRealName() -> String? {
        switch self {
        case .kedougou: return "Kédougou"
        case .saint_louis: return "Saint-Louis"
        case .sedhiou: return "Sédhiou"
        case .thies: return "Thiès"
        default: return nil
        }
    }
}
