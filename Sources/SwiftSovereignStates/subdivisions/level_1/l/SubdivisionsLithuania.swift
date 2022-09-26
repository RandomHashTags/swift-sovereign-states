//
//  SubdivisionsLithuania.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsLithuania : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Counties_of_Lithuania
    case alytus
    case kaunas
    case klaipeda
    case marijampole
    case panevezys
    case siauliai
    case taurage
    case telsiai
    case utena
    case vilnius
    
    public func getCountry() -> Country {
        return Country.lithuania
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.counties
    }
    
    public func getRealName() -> String? {
        switch self {
        case .klaipeda: return "Klaipėda"
        case .marijampole: return "Marijampolė"
        case .panevezys: return "Panevėžys"
        case .siauliai: return "Šiauliai"
        case .taurage: return "Tauragė"
        case .telsiai: return "Telšiai"
        default: return nil
        }
    }
}
