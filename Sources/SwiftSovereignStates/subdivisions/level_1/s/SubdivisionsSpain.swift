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
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .basque_country:
            return "_(autonomous_community)"
        case .galicia:
            return "_(Spain)"
        default:
            return nil
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .andalusia: return "2/20/Flag_of_Andaluc%C3%ADa"
        case .aragon: return "1/18/Flag_of_Aragon"
        case .asturias: return "3/3e/Flag_of_Asturias"
        case .balearic_islands: return "7/7b/Flag_of_the_Balearic_Islands"
        case .basque_country: return "2/2d/Flag_of_the_Basque_Country"
        case .canary_islands: return "b/b0/Flag_of_the_Canary_Islands"
        case .cantabria: return "3/30/Flag_of_Cantabria"
        case .castile_and_leon: return "1/13/Flag_of_Castile_and_León"
        case .castilla_la_macha: return "d/d4/Bandera_Castilla-La_Mancha"
        case .catalonia: return "c/ce/Flag_of_Catalonia"
        case .community_of_madrid: return "9/9c/Flag_of_the_Community_of_Madrid"
        case .extremadura: return "1/13/Flag_of_Extremadura%2C_Spain_%28with_coat_of_arms%29"
        case .galicia: return "6/64/Flag_of_Galicia"
        case .la_rioja: return "d/db/Flag_of_La_Rioja_%28with_coat_of_arms%29"
        case .navarre: return "3/36/Bandera_de_Navarra"
        case .region_of_murcia: return "a/a5/Flag_of_the_Region_of_Murcia"
        case .valencian_community: return "1/16/Flag_of_the_Valencian_Community_%282x3%29"
            
        case .ceuta: return "f/fd/Flag_Ceuta"
        case .melilla: return "f/f7/Flag_of_Melilla"
        }
    }
}
