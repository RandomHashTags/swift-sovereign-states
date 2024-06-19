//
//  SubdivisionsSpain.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsSpain : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Autonomous_communities_of_Spain
    case andalusia
    case aragon
    case asturias
    case balearic_islands
    case basque_country
    case canary_islands
    case cantabria
    case castile_and_leon
    case castilla_la_macha
    case catalonia
    case ceuta
    case community_of_madrid
    case extremadura
    case galicia
    case la_rioja
    case melilla
    case navarre
    case region_of_murcia
    case valencian_community
    
    public var country : Locale.Region {
        return Locale.Region.spain
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .ceuta, .melilla:
            return SovereignStateSubdivisionType.autonomous_cities
        default:
            return SovereignStateSubdivisionType.autonomous_communities
        }
    }
}