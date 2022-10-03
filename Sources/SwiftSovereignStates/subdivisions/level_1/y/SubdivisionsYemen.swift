//
//  SubdivisionsYemen.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsYemen : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Yemen
    case amran
    case abyan
    case dhale
    case aden
    case al_bayda
    case al_hudaydah
    case al_jawf
    case al_mahrah
    case al_mahwit
    case sanaa_city
    case dhamar
    case hadhramaut
    case hajjah
    case ibb
    case lahij
    case marib
    case raymah
    case saada
    case sanaa
    case shabwah
    case socotra
    case taiz
    
    public func getCountry() -> Country {
        return Country.yemen
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        switch self {
        case .sanaa_city:
            return SovereignStateSubdivisionType.cities
        default:
            return SovereignStateSubdivisionType.governorates
        }
    }
    
    public func getConditionalName() -> String? {
        switch self {
        case .sanaa_city: return "Sanaa"
        case .amran: return "'Amran"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .sanaa_city:
            return nil
        default:
            return "_" + getTypeSuffix()
        }
    }
}
