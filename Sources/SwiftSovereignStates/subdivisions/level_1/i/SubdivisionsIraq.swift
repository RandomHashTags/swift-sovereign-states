//
//  SubdivisionsIraq.swift
//  
//
//  Created by Evan Anderson on 9/27/22.
//

import Foundation

public enum SubdivisionsIraq : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Governorates_of_Iraq
    case al_anbar
    case al_qadisiyyah
    case babil
    case baghdad
    case basra
    case dhi_qar
    case diyala
    case duhok
    case erbil
    case halabja
    case karbala
    case kirkuk
    case maysan
    case muthanna
    case najaf
    case nineveh
    case saladin
    case sulaymaniyah
    case wasit
    
    public var country : Locale.Region {
        return Locale.Region.iraq
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.governorates
    }
    
    public var isoAlpha2 : String? {
        switch self {
        case .al_anbar: return "AN"
        case .al_qadisiyyah: return "QA"
        case .babil: return "BB"
        case .baghdad: return "BG"
        case .basra: return "BA"
        case .dhi_qar: return "DQ"
        case .diyala: return "DI"
        case .duhok: return "DA"
        case .erbil: return "AR"
        case .halabja: return nil
        case .karbala: return "KA"
        case .kirkuk: return "KI"
        case .maysan: return "MA"
        case .muthanna: return "MU"
        case .najaf: return "NA"
        case .nineveh: return "NI"
        case .saladin: return "SD"
        case .sulaymaniyah: return "SU"
        case .wasit: return "WA"
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .al_anbar: return "b/bc/Flag_of_Al_Anbar_Governorate.png"
        case .al_qadisiyyah: return "en/7/7c/Seal_of_Al-Qadisiyah_Governorate.png"
        case .babil: return "a/a6/Flag_of_Babil_Governorate.png"
        case .baghdad: return "en/7/76/Flag_of_Baghdad_Governorate.png"
        case .basra: return "5/50/Flag_of_Basra_Governorate"
        case .dhi_qar: return "en/2/2b/Emblem_of_Dhi_Qar_Governorate.png"
        case .diyala: return "8/80/Flag_of_Diyala_Governorate.png"
        case .duhok: return "4/4d/Dohuk_Governorate_logo.jpg"
        case .erbil: return "en/5/57/Seal_of_Erbil_Governorate.png"
        case .halabja: return "en/8/80/Emblem_of_Halabja_Governorate.png"
        case .karbala: return "en/c/c9/Emblem_of_Karbala_Governorate.png"
        case .kirkuk: return "8/8d/Flag_of_Kirkuk_Governorate.png"
        case .maysan: return "en/1/12/Emblem_of_Maysan_Governorate.png"
        case .muthanna: return "en/e/e5/Flag_of_Muthanna_Governorate.png"
        case .najaf: return "en/c/cc/Seal_of_Najaf_Governorate.png"
        case .nineveh: return "c/c6/Flag_of_Nineveh_Governorate.png"
        case .saladin: return "a/ad/Flag_of_Saladin_Governorate%2C_Iraq"
        case .sulaymaniyah: return "en/8/8f/Flag_of_Sulaymaniyah_Governorate.png"
        case .wasit: return "en/0/08/Flag_of_Wasit_Governorate.png"
        }
    }
}
