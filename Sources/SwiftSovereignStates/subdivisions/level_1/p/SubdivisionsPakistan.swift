//
//  SubdivisionsPakistan.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsPakistan : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_units_of_Pakistan
    case azad_jammu_and_kashmir
    case balochistan
    case gilgit_baltistan
    case islamabad_capital_territory
    case khyber_pakhtunkhwa
    case punjab
    case sindh
    
    public var country : Country {
        return Country.pakistan
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .islamabad_capital_territory:
            return SovereignStateSubdivisionType.federal_territories
        default:
            return SovereignStateSubdivisionType.provinces
        }
    }
    
    public var wikipedia_name : String? {
        switch self {
        case .azad_jammu_and_kashmir:
            return "Azad Kashmir"
        default:
            return nil
        }
    }
    
    public var real_name : String? {
        switch self {
        case .azad_jammu_and_kashmir: return "Azad Jammu and Kashmir"
        case .gilgit_baltistan: return "Gilgit-Baltistan"
        default: return nil
        }
    }
    
    public var wikipedia_url_suffix : String? {
        switch self {
        case .balochistan,
                .punjab:
            return ",_Pakistan"
        default:
            return nil
        }
    }
}
