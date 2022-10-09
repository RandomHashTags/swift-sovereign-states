//
//  SubdivisionsSaoTomeAndPrincipe.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public enum SubdivisionsSaoTomeAndPrincipe : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_São_Tomé_and_Pr%C3%ADncipe
    case agua_grande
    case cantagalo
    case caue
    case lemba
    case lobata
    case me_zochi
    
    case autonomous_region_of_principe
    
    public func getCountry() -> Country {
        return Country.sao_tome_and_principe
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        switch self {
        case .autonomous_region_of_principe:
            return SovereignStateSubdivisionType.autonomous_regions
        default:
            return SovereignStateSubdivisionType.districts
        }
    }
    
    public func getRealName() -> String? {
        switch self {
        case .agua_grande: return "Água Grande"
        case .caue: return "Caué"
        case .lemba: return "Lembá"
        case .me_zochi: return "Mé-Zóchi"
            
        case .autonomous_region_of_principe: return "Autonomous Region of Príncipe"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .autonomous_region_of_principe:
            return nil
        default:
            return "_" + getTypeSuffix()
        }
    }
}
