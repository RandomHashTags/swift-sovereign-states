//
//  SubdivisionsSaoTomeAndPrincipe.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public enum SubdivisionsSaoTomeAndPrincipe : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_São_Tomé_and_Pr%C3%ADncipe
    case agua_grande
    case cantagalo
    case caue
    case lemba
    case lobata
    case me_zochi
    
    case autonomous_region_of_principe
    
    public var country : Locale.Region {
        return Locale.Region.sãoToméPríncipe
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .autonomous_region_of_principe:
            return SovereignStateSubdivisionType.autonomous_regions
        default:
            return SovereignStateSubdivisionType.districts
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .autonomous_region_of_principe:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
