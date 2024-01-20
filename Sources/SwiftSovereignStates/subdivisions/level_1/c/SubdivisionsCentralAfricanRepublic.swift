//
//  SubdivisionsCentralAfricanRepublic.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsCentralAfricanRepublic : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Prefectures_of_the_Central_African_Republic
    case bamingui_bangoran
    case basse_kotto
    case haut_mbomou
    case haute_kotto
    case kemo
    case lobaye
    case mambere_kadei
    case mbomou
    case nana_grebizi
    case nana_mambere
    case ombella_m_poko
    case ouaka
    case ouham
    case ouham_pende
    case sangha_mbaere
    case vakaga
    
    case bangui
    
    public var country : Locale.Region {
        return Locale.Region.centralAfricanRepublic
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .bangui:
            return SovereignStateSubdivisionType.cities
        default:
            return SovereignStateSubdivisionType.prefectures
        }
    }
    
    public var wikipediaURLSuffix : String? {
        return nil
    }
}
