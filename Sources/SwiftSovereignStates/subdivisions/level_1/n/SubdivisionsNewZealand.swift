//
//  SubdivisionsNewZealand.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsNewZealand : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_New_Zealand
    case auckland
    case bay_of_plenty
    case canterbury
    case gisborne
    case hawkes_bay
    case manawatu_whanganui
    case malborough
    case nelson
    case northland
    case otago
    case southland
    case taranaki
    case tasman
    case waikato
    case wellington
    case west_coast
    
    public var country : Locale.Region {
        return Locale.Region.newZealand
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .bay_of_plenty,
                .manawatu_whanganui,
                .otago,
                .taranaki,
                .waikato:
            return nil
        case .canterbury,
                .nelson,
                .southland,
                .west_coast:
            return ",_New_Zealand"
        default:
            return nil
        }
    }
}
