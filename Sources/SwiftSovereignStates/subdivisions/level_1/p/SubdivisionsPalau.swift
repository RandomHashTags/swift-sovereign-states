//
//  SubdivisionsPalau.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public enum SubdivisionsPalau : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/States_of_Palau
    case aimeliik
    case airai
    case angaur
    case hatohobei
    case kayangel
    case koror
    case melekeok
    case ngaraard
    case ngarchelong
    case ngardmau
    case ngatpang
    case ngchesar
    case ngeremlengui
    case ngiwal
    case peleliu
    case sonsorol
    
    public var country : Locale.Region {
        return Locale.Region.palau
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.states
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .kayangel: return "3/35/Flag_of_Kayangel"
        case .aimeliik: return "3/31/Flag_of_Aimeliik"
        case .airai: return "d/d8/Flag_of_Airai_State.png"
        case .melekeok: return "4/44/Flag_of_Melekeok.png"
        case .ngaraard: return "4/45/Flag_of_Ngaraard_State"
        case .ngarchelong: return "9/9d/Flag_of_Ngarchelong"
        case .ngardmau: return "3/39/Flag_of_Ngardmau_State.png"
        case .ngeremlengui: return "d/dc/Flag_of_Ngeremlengui_State%2C_Palau"
        case .ngatpang: return "f/ff/Flag_of_Ngatpang"
        case .ngchesar: return "5/57/Flag_of_Ngchesar_State.png"
        case .ngiwal: return "7/7c/Flag_of_Ngiwal_State.png"
        case .angaur: return "8/86/Flag_of_Angaur_State"
        case .koror: return "1/1b/Flag_of_Koror_State.png"
        case .peleliu: return "4/48/Flag_of_Peleliu"
        case .hatohobei: return "e/e9/Flag_of_Hatohobei"
        case .sonsorol: return "0/01/Flag_of_Sonsorol"
        }
    }
    
    public var wikipediaURLSuffix : String? {
        return nil
    }
}
