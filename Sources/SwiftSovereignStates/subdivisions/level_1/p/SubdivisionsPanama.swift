//
//  SubdivisionsPanama.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsPanama : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Panama
    case bocas_del_toro
    case chiriqui
    case cocle
    case colon
    case darien
    case herrera
    case los_santos
    case panama
    case panama_oeste
    case veraguas
    
    case embera
    case guna_yala
    case naso_tjer_di
    case ngabe_bugle
    
    case madungandi
    case wargandi
    
    public var country : Locale.Region {
        return Locale.Region.panama
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .embera,
                .guna_yala,
                .naso_tjer_di,
                .ngabe_bugle:
            return SovereignStateSubdivisionType.indigenous_province

        case .madungandi,
                .wargandi:
            return SovereignStateSubdivisionType.municipalities
        default:
            return SovereignStateSubdivisionType.provinces
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .embera,
                .ngabe_bugle,
                .naso_tjer_di:
            return "_Comarca"
        case .bocas_del_toro:
            return "_" + type_suffix
        default:
            return nil
        }
    }
}
