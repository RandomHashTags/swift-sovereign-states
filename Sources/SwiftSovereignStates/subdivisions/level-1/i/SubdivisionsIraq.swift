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
}
