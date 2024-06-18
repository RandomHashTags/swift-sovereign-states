//
//  SubdivisionsEstonia.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public enum SubdivisionsEstonia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Counties_of_Estonia
    case harju
    case hiiu
    case ida_viru
    case jarva
    case jogeva
    case laane
    case laane_viru
    case parnu
    case polva
    case rapla
    case saare
    case tartu
    case valga
    case viljandi
    case voru
    
    public var country : Locale.Region {
        return Locale.Region.estonia
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.counties
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .harju: return "2/22/Flag_of_et-Harju_maakond"
        case .hiiu: return "5/5f/Hiiumaa_lipp"
        case .ida_viru: return "c/c7/Ida-Virumaa_lipp"
        case .jarva: return "5/50/Flag_of_et-Järva_maakond"
        case .jogeva: return "6/6b/Jõgevamaa_lipp"
        case .laane: return "c/cc/Läänemaa_lipp"
        case .laane_viru: return "8/8c/Lääne-Virumaa_lipp"
        case .parnu: return "b/b2/Pärnumaa_lipp"
        case .polva: return "3/30/Põlvamaa_lipp"
        case .rapla: return "e/e2/Raplamaa_lipp"
        case .saare: return "a/ac/Saaremaa_lipp"
        case .tartu: return "1/10/Tartumaa_lipp"
        case .valga: return "9/90/Valgamaa_lipp"
        case .viljandi: return "3/3c/Viljandimaa_lipp"
        case .voru: return "c/c1/Võrumaa_lipp"
        }
    }
}
