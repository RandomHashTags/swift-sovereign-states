//
//  SubdivisionsArmenia.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public enum SubdivisionsArmenia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Armenia
    case aragatsotn
    case ararat
    case armavir
    case gegharkunik
    case kotayk
    case lori
    case shirak
    case syunik
    case tavush
    case vayots_dzor
    case yerevan
    
    public func getCountry() -> Country {
        return Country.armenia
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public var wikipedia_flag_url_svg_id : String? {
        switch self {
        case .gegharkunik: return "8/8f/Gegharkunik_Province_Coat_of_Arms.jpg"
        case .kotayk: return "5/59/Kotayk_marz_gerb.jpg"
        case .lori: return "5/53/Lori_marz_coa.gif"
        case .vayots_dzor: return "8/80/Vayots_Dzor_portal_logo.png"
        case .yerevan: return "4/43/Flag_of_Yerevan"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .yerevan:
            return nil
        default:
            return "_" + getTypeSuffix()
        }
    }
}
