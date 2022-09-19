//
//  SubdivisionsOman.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public enum SubdivisionsOman : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Governorates_of_Oman
    case ad_dakhiliyah
    case ad_dhahirah
    case al_batinah_north
    case al_batinah_south
    case al_buraimi
    case al_wusta
    case ash_sharqiyah_north
    case ash_sharqiyah_south
    case dhofar
    case musandam
    case muscat
    
    public func getCountry() -> Country {
        return Country.oman
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.governorates
    }
    
    public func getWikipediaURLSuffix(typeSuffix: String) -> String? {
        switch self {
        case .al_wusta:
            return typeSuffix + "_(Oman)"
        default:
            return nil
        }
    }
}
