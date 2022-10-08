//
//  SubdivisionsCentralAfricanRepublic.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsCentralAfricanRepublic : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Prefectures_of_the_Central_African_Republic
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
    
    public func getCountry() -> Country {
        return Country.central_african_republic
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        switch self {
        case .bangui:
            return SovereignStateSubdivisionType.cities
        default:
            return SovereignStateSubdivisionType.prefectures
        }
    }
    
    public func getRealName() -> String? {
        switch self {
        case .bamingui_bangoran: return "Bamingui-Bangoran"
        case .basse_kotto: return "Basse-Kotto"
        case .haut_mbomou: return "Haut-Mbomou"
        case .haute_kotto: return "Haute-Kotto"
        case .kemo: return "Kémo"
        case .mambere_kadei: return "Mambéré-Kadéï"
        case .nana_grebizi: return "Nana-Grébizi"
        case .nana_mambere: return "Nana-Mambéré"
        case .ombella_m_poko: return "Ombella-M'Poko"
        case .ouham_pende: return "Ouham-Pendé"
        case .sangha_mbaere: return "Sangha-Mbaéré"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        return nil
    }
}
