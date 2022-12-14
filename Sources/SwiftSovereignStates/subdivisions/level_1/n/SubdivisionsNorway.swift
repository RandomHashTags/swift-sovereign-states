//
//  SubdivisionsNorway.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsNorway : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Counties_of_Norway
    case agder
    case innlandet
    case more_og_romsdal
    case nordland
    case oslo
    case rogaland
    case troms_og_finnmark
    case trondelag
    case vestfold_og_telemark
    case vestland
    case viken
    
    case jan_mayen
    case svalbard
    
    case bouvet_island
    case peter_i_island
    case queen_maud_land
    
    public func getCountry() -> Country {
        return Country.norway
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        switch self {
        case .jan_mayen,
                .svalbard:
            return SovereignStateSubdivisionType.territories
        case .bouvet_island,
                .peter_i_island,
                .queen_maud_land:
            return SovereignStateSubdivisionType.dependencies
        default:
            return SovereignStateSubdivisionType.counties
        }
    }
    
    public func getRealName() -> String? {
        switch self {
        case .more_og_romsdal: return "Møre og Romsdal"
        case .troms_og_finnmark: return "Troms og Finnmark"
        case .trondelag: return "Trøndelag"
        case .vestfold_og_telemark: return "Vestfold og Telemark"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .viken:
            return "_(" + getTypeSuffix().lowercased() + ")"
        default:
            return nil
        }
    }
}
