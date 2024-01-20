//
//  SubdivisionsNamibia.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsNamibia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Namibia
    case erongo
    case hardap
    case kavango_east
    case kavango_west
    case khomas
    case kunene
    case ohangwena
    case omaheke
    case omusati
    case oshana
    case oshikoto
    case otjozondjupa
    case zambezi
    case karas
    
    public var country : Locale.Region {
        return Locale.Region.namibia
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .kavango_east,
                .kavango_west,
                .oshana:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
