//
//  SubdivisionsAlbania.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public enum SubdivisionsAlbania : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Counties_of_Albania
    case berat
    case diber
    case durres
    case elbasan
    case fier
    case gjirokaster
    case korce
    case kukes
    case lezhe
    case shkoder
    case tirana
    case vlore
    
    public func getCountry() -> Country {
        return Country.albania
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.counties
    }
    
    public func getRealName() -> String? {
        switch self {
        case .diber: return "Dibër"
        case .durres: return "Dirrës"
        case .gjirokaster: return "Gjirokastër"
        case .korce: return "Korçë"
        case .kukes: return "Kukës"
        case .lezhe: return "Lezhë"
        case .shkoder: return "Shkodër"
        case .vlore: return "Vlorë"
        default: return nil
        }
    }
}
