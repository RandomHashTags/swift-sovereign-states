//
//  SubdivisionsMali.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public enum SubdivisionsMali : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Mali
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
    
    public var country : Country {
        return Country.mali
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        switch self {
        case .bamako:
            return SovereignStateSubdivisionType.cities
        default:
            return SovereignStateSubdivisionType.regions
        }
    }
    
    public var real_name : String? {
        switch self {
        case .menaka: return "Ménaka"
        case .segou: return "Ségou"
        case .taoudenit: return "Taoudénit"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .bamako:
            return nil
        default:
            return "_" + getTypeSuffix()
        }
    }
}
