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
    
    public var type : Locale.Region.SubdivisionType {
        switch self {
        case .bamako:
            return Locale.Region.SubdivisionType.city
        default:
            return Locale.Region.SubdivisionType.region
        }
    }
}
