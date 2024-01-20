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
    
    public var country : Locale.Region {
        return Locale.Region.mali
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .bamako:
            return SovereignStateSubdivisionType.cities
        default:
            return SovereignStateSubdivisionType.regions
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .bamako:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
