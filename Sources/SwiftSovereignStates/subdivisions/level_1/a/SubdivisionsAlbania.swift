//
//  SubdivisionsAlbania.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public enum SubdivisionsAlbania : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Counties_of_Albania
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
    
    public var country : Locale.Region {
        return Locale.Region.albania
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.counties
    }
    
    public var wikipediaFlagURLSvgID : String? {
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
    
    public var governmentURL : String? {
        switch self {
        case .berat: return "https://qarkuberat.gov.al"
        case .diber: return "https://www.qarkudiber.gov.al"
        case .durres: return "https://qarkudurres.gov.al"
        case .elbasan: return "https://qarkuelbasan.gov.al"
        case .fier: return "http://www.qarkufier.gov.al"
        case .gjirokaster: return nil
        case .korce: return "https://www.korcaregion.com"
        case .kukes: return "https://kqk.gov.al"
        case .lezhe: return "https://www.qarkulezhe.gov.al/"
        case .shkoder: return "https://qarkushkoder.gov.al"
        case .tirana: return "https://www.forum-al.com/"
        case .vlore: return "https://www.qarkuvlore.gov.al"
        }
    }
}
