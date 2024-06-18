//
//  SubdivisionsItaly.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsItaly : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Italy
    case abruzzo
    case aosta_valley
    case apulia
    case basilicata
    case calabria
    case campania
    case emilia_romagna
    case friuli_venezla_giulia
    case lazio
    case liguria
    case lombardy
    case marche
    case molise
    case piedmont
    case sardinia
    case sicily
    case trentino_south_tyrol
    case tuscany
    case umbria
    case veneto
    
    public var country : Locale.Region {
        return Locale.Region.italy
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .aosta_valley,
                .friuli_venezla_giulia,
                .sardinia,
                .sicily,
                .trentino_south_tyrol:
            return SovereignStateSubdivisionType.autonomous_regions
        default:
            return SovereignStateSubdivisionType.regions
        }
    }
}
