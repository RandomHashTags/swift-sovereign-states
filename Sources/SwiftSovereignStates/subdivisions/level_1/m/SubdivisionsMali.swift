//
//  SubdivisionsMali.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public enum SubdivisionsMali : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Mali
    case gao
    case kayes
    case kidal
    case koulikoro
    case menaka
    case mopti
    case segou
    case sikasso
    case taoudenit
    case tombouctou
    
    case bamako
    
    public func getCountry() -> Country {
        return Country.mali
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    public func getType() -> SovereignStateSubdivisionType? {
        switch self {
        case .bamako:
            return SovereignStateSubdivisionType.cities
        default:
            return nil
        }
    }
    
    public func getRealName() -> String? {
        switch self {
        case .menaka: return "Ménaka"
        case .segou: return "Ségou"
        case .taoudenit: return "Taoudénit"
        default: return nil
        }
    }
}
