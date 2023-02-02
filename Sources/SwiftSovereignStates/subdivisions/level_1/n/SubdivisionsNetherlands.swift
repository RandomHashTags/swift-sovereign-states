//
//  SubdivisionsNetherlands.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsNetherlands : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_the_Netherlands
    case drenthe
    case flevoland
    case friesland
    case gelderland
    case groningen
    case limburg
    case north_brabant
    case north_holland
    case overijssel
    case south_holland
    case utrecht
    case zeeland
    
    case bonaire
    case saba
    case sint_eustatius
    
    public var country : Country {
        return Country.netherlands
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .bonaire,
                .saba,
                .sint_eustatius:
            return SovereignStateSubdivisionType.special_municipalities
        default:
            return SovereignStateSubdivisionType.provinces
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .groningen,
                .utrecht:
            return "_(province)"
        case .limburg:
            return "_(Netherlands)"
        case .bonaire,
                .saba,
                .sint_eustatius:
            return nil
        default:
            return nil
        }
    }
}
