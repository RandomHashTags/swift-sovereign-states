//
//  SubdivisionsGuyana.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation

public enum SubdivisionsGuyana : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Guyana
    case barima_waini
    case cuyuni_mazaruni
    case demerara_mahaica
    case east_berbice_corentyne
    case essequibo_islands_west_demerara
    case mahaica_berbice
    case pomeroon_supenaam
    case potaro_siparuni
    case upper_demerara_berbice
    case upper_takutu_upper_essequibo
    
    public var country : Locale.Region {
        return Locale.Region.guyana
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public var wikipediaURLSuffix : String? {
        return nil
    }
}
