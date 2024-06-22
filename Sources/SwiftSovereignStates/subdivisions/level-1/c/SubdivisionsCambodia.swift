//
//  SubdivisionsCambodia.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public enum SubdivisionsCambodia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Cambodia
    case banteay_meanchey
    case battambang
    case kampong_cham
    case kampong_chhnang
    case kampong_speu
    case kampong_thom
    case kampot
    case kandal
    case kep
    case koh_kong
    case kratie
    case mondulkiri
    case oddar_meanchey
    case pailin
    case phnom_penh
    case preah_sihanouk
    case preah_vihear
    case prey_veng
    case pursat
    case ratanakiri
    case siem_reap
    case stung_treng
    case svay_rieng
    case takeo
    case tboung_khmum
    
    public var country : Locale.Region {
        return Locale.Region.cambodia
    }
    
    public var type : Locale.Region.SubdivisionType {
        switch self {
        case .phnom_penh:
            return Locale.Region.SubdivisionType.autonomous_municipalities
        default:
            return Locale.Region.SubdivisionType.provinces
        }
    }
}
