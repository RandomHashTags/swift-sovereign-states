//
//  SubdivisionsEstonia.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public enum SubdivisionsEstonia : String, CaseIterable, SovereignStateSubdivision {
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
    
    public func getCountry() -> Country {
        return Country.estonia
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.counties
    }
    
    public func getRealName() -> String? {
        switch self {
        case .ida_viru: return "Ida-Viru"
        case .jarva: return "Järva"
        case .jogeva: return "Jõgeva"
        case .laane: return "Lääne"
        case .laane_viru: return "Lääne-Viru"
        case .parnu: return "Pärnu"
        case .polva: return "Põlva"
        case .voru: return "Võru"
        default: return nil
        }
    }
    
    public func getFlagURLWikipediaSVGID() -> String? {
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
