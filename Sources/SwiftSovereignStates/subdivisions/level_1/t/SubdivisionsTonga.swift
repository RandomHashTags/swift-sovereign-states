//
//  SubdivisionsTonga.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsTonga : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Tonga
    case eua
    case ha_apai
    case niua_islands
    case tongatapu
    case vava_u
    
    public var country : Locale.Region {
        return Locale.Region.tonga
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
    
    public var wikipediaURLSuffix : String? {
        return nil
    }
}
