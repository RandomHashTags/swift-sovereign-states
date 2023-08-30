//
//  SubdivisionsEritrea.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsEritrea : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Eritrea
    case anseba
    case debub
    case gash_barka
    case maekel
    case northern_red_sea
    case southern_red_sea
    
    public var country : Locale.Region {
        return Locale.Region.eritrea
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
}
