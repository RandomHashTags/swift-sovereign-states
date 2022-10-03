//
//  SubdivisionsLaos.swift
//  
//
//  Created by Evan Anderson on 9/27/22.
//

import Foundation

public enum SubdivisionsLaos : String, CaseIterable, SovereignStateSubdivision {
    case attapeu
    case bokeo
    case bolikhamsai
    case champasak
    case houaphanh
    case khammouane
    case luang_namtha
    case luang_prabang
    case oudomxay
    case phongsaly
    case sainyabuli
    case salavan
    case savannakhet
    case sekong
    case vientiane
    case vientiane_prefecture
    case xaisomboun
    case xiangkhouang
    
    public func getCountry() -> Country {
        return Country.laos
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        switch self {
        case .vientiane_prefecture:
            return SovereignStateSubdivisionType.prefectures
        default:
            return SovereignStateSubdivisionType.provinces
        }
    }
    
    public func getRealName() -> String? {
        switch self {
        case .bokeo: return "Bokèo"
        case .vientiane_prefecture: return "Vientiane"
        default: return nil
        }
    }
}
