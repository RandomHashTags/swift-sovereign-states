//
//  SubdivisionsEritrea.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsEritrea : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Eritrea
    case anseba
    case debub
    case gash_barka
    case maekel
    case northern_red_sea
    case southern_red_sea
    
    public func getCountry() -> Country {
        return Country.eritrea
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public func getRealName() -> String? {
        switch self {
        case .gash_barka: return "Gash-Barka"
        default: return nil
        }
    }
}
