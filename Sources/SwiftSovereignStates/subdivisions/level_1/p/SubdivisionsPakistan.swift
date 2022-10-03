//
//  SubdivisionsPakistan.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsPakistan : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_units_of_Pakistan
    case azad_jammu_and_kashmir
    case balochistan
    case gilgit_baltistan
    case islamabad_capital_territory
    case khyber_pakhtunkhwa
    case punjab
    case sindh
    
    public func getCountry() -> Country {
        return Country.pakistan
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        switch self {
        case .islamabad_capital_territory:
            return SovereignStateSubdivisionType.federal_territories
        default:
            return SovereignStateSubdivisionType.provinces
        }
    }
    
    public func getConditionalName() -> String? {
        switch self {
        case .azad_jammu_and_kashmir:
            return "Azad Kashmir"
        default:
            return nil
        }
    }
    
    public func getRealName() -> String? {
        switch self {
        case .azad_jammu_and_kashmir: return "Azad Jammu and Kashmir"
        case .gilgit_baltistan: return "Gilgit-Baltistan"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .balochistan,
                .punjab:
            return ",_Pakistan"
        default:
            return ""
        }
    }
}
