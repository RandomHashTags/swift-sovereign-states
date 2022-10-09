//
//  SubdivisionsPanama.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsPanama : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Panama
    case borcas_del_toro
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
    
    public func getCountry() -> Country {
        return Country.panama
    }
    
    public func getType() -> SovereignStateSubdivisionType {
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
    
    public func getRealName() -> String? {
        switch self {
        case .chiriqui: return "Chiriquí"
        case .cocle: return "Coclé"
        case .colon: return "Colón"
        case .darien: return "Darién"
        case .panama: return "Panamá"
        case .panama_oeste: return "Panamá Oeste"

        case .embera: return "Emberá-Wounaan"
        case .ngabe_bugle: return "Ngäbe-Buglé"
        case .naso_tjer_di: return "Naso Tjër Di"

        case .madungandi: return "Madungandí"
        case .wargandi: return "Wargandí"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .embera,
                .ngabe_bugle,
                .naso_tjer_di:
            return "Comarca"
        case .guna_yala,
                .madungandi,
                .wargandi:
            return nil
        default:
            return nil
        }
    }
}
