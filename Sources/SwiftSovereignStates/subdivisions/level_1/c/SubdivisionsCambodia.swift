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
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .phnom_penh:
            return SovereignStateSubdivisionType.autonomous_municipalities
        default:
            return SovereignStateSubdivisionType.provinces
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .banteay_meanchey: return "en/1/14/Banteay_Meanchey_seal.png"
        case .battambang: return "en/a/a8/Battambang_Province_seal.png"
        case .kampong_cham: return "en/9/94/Kampong_Cham_seal.png"
        case .kampong_chhnang: return "en/4/4c/Kampong_Chhnang_seal.png"
        case .kampong_speu: return "en/c/cc/Kampong_Speu_seal.png"
        case .kampong_thom: return "en/7/78/Kampong_Thom_seal.png"
        case .kampot: return "en/4/47/Kampot_logo.png"
        case .kandal: return "en/b/b4/Seal_of_Kandal.png"
        case .kep: return "en/9/9d/Kep_seal.png"
        case .koh_kong: return "en/0/06/Koh_Kong_seal.png"
        case .kratie: return "en/2/2c/Kratié_Province_logo.png"
        case .mondulkiri: return "en/5/55/Mondulkiri.png"
        case .oddar_meanchey: return "en/c/c9/Oddar_Meanchey_seal.png"
        case .pailin: return "en/8/8f/Seal_of_Pailin.png"
        case .phnom_penh: return "5/54/Seal_of_Phnom_Penh"
        case .preah_sihanouk: return "en/e/e3/Sihanoukville_seal.png"
        case .preah_vihear: return "en/1/18/Preah_Vihear.png"
        case .prey_veng: return "en/c/c8/Prey_Veng.png"
        case .pursat: return "en/6/6b/Pursat.png"
        case .ratanakiri: return "en/7/7b/Ratanakiri.png"
        case .siem_reap: return "en/0/0b/Siem_Reap_Province_seal.png"
        case .stung_treng: return "en/f/fc/Stung_Treng_seal.png"
        case .svay_rieng: return "en/1/17/Svay_Rieng.png"
        case .takeo: return "en/1/16/Seal_of_Takeo.png"
        case .tboung_khmum: return "en/4/45/Tboung_Khmum_seal.png"
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .phnom_penh:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
