//
//  SubdivisionsAlbania.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public enum SubdivisionsAlbania : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Counties_of_Albania
    case berat
    case diber
    case durres
    case elbasan
    case fier
    case gjirokaster
    case korce
    case kukes
    case lezhe
    case shkoder
    case tirana
    case vlore
    
    public func getCountry() -> Country {
        return Country.albania
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.counties
    }
    
    public func getRealName() -> String? {
        switch self {
        case .diber: return "Dibër"
        case .durres: return "Durrës"
        case .gjirokaster: return "Gjirokastër"
        case .korce: return "Korçë"
        case .kukes: return "Kukës"
        case .lezhe: return "Lezhë"
        case .shkoder: return "Shkodër"
        case .vlore: return "Vlorë"
        default: return nil
        }
    }
    
    public func getFlagURLWikipediaSVGID() -> String? {
        switch self {
        case .berat: return "c/c1/Stema_e_Qarkut_Berat"
        case .diber: return "6/69/ALB_Qarku_i_Dibrës_COA"
        case .durres: return "f/f8/Stema_e_Qarkut_Durrës"
        case .elbasan: return "3/3a/Stema_e_Qarkut_Elbasan"
        case .fier: return "2/29/Stema_e_Qarkut_Fier"
        case .gjirokaster: return "4/4e/Stema_e_Qarkut_Gjirokastër"
        case .korce: return "3/34/Stema_e_Qarkut_Korçë"
        case .kukes: return "c/ce/Stema_e_Qarkut_Kukës"
        case .lezhe: return "b/b3/Stema_e_Qarkut_Lezhë"
        case .shkoder: return "4/49/Stema_e_Qarkut_Shkodër"
        case .tirana: return "f/f4/Stema_e_Qarkut_Tiranë"
        case .vlore: return "f/f1/Stema_e_Qarkut_Vlorë"
        }
    }
}
