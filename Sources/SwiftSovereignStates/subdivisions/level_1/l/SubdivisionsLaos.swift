//
//  SubdivisionsLaos.swift
//  
//
//  Created by Evan Anderson on 9/27/22.
//

import Foundation

public enum SubdivisionsLaos : String, SovereignStateSubdivision {
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
    
    public var country : Locale.Region {
        return Locale.Region.laos
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .vientiane_prefecture:
            return SovereignStateSubdivisionType.prefectures
        default:
            return SovereignStateSubdivisionType.provinces
        }
    }
}
