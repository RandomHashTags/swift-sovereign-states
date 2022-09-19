//
//  SubdivisionsMalaysia.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsMalaysia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/States_and_federal_territories_of_Malaysia
    case johor
    case kedah
    case kelantan
    case malacca
    case negeri_sembilan
    case pahang
    case penang
    case perak
    case perlis
    case sabah
    case sarawak
    case selangor
    case terengganu
    
    case kuala_lumpur
    case labuan
    case putrajaya
    
    public func getCountry() -> Country {
        return Country.malaysia
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.states
    }
    
    public func getType() -> SovereignStateSubdivisionType? {
        switch self {
        case .kuala_lumpur,
                .labuan,
                .putrajaya:
            return .federal_territories
        default:
            return nil
        }
    }
    
    public func getWikipediaURLSuffix(typeSuffix: String) -> String? {
        switch self {
        default:
            return ""
        }
    }
}
