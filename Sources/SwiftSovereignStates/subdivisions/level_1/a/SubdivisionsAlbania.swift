//
//  SubdivisionsAlbania.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public enum SubdivisionsAlbania : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Counties_of_Albania
    case berat
    case dibër
    case durrës
    case elbasan
    case fier
    case gjirokastër
    case korçë
    case kukës
    case lezhë
    case shkodër
    case tirana
    case vlorë
    
    public func getCountry() -> Country {
        return Country.albania
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.counties
    }
    
    public func getFlagURLWikipediaSVGID() -> String? {
        switch self {
        case .berat: return "c/c1/Stema_e_Qarkut_Berat"
        case .dibër: return "6/69/ALB_Qarku_i_Dibrës_COA"
        case .durrës: return "f/f8/Stema_e_Qarkut_Durrës"
        case .elbasan: return "3/3a/Stema_e_Qarkut_Elbasan"
        case .fier: return "2/29/Stema_e_Qarkut_Fier"
        case .gjirokastër: return "4/4e/Stema_e_Qarkut_Gjirokastër"
        case .korçë: return "3/34/Stema_e_Qarkut_Korçë"
        case .kukës: return "c/ce/Stema_e_Qarkut_Kukës"
        case .lezhë: return "b/b3/Stema_e_Qarkut_Lezhë"
        case .shkodër: return "4/49/Stema_e_Qarkut_Shkodër"
        case .tirana: return "f/f4/Stema_e_Qarkut_Tiranë"
        case .vlorë: return "f/f1/Stema_e_Qarkut_Vlorë"
        }
    }
}
