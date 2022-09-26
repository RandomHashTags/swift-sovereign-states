//
//  SubdivisionsSyria.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsSyria : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Governorates_of_Tunisia
    case al_hasaka
    case aleppo
    case as_suwayda
    case damascus
    case daraa
    case deir_ez_zor
    case hama
    case homs
    case idlib
    case latakia
    case queneitra
    case raqqa
    case rif_dimashq
    case tartus
    
    public func getCountry() -> Country {
        return Country.syria
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.governorates
    }
    
    public func getRealName() -> String? {
        switch self {
        case .al_hasaka: return "Al-Hasakah"
        case .as_suwayda: return "As-Suwayda"
        case .deir_ez_zor: return "Deir ez-Zor"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        return "_Governorate"
    }
}
