//
//  SubdivisionsArmenia.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public enum SubdivisionsArmenia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Armenia
    case aragatsotn
    case ararat
    case armavir
    case gegharkunik
    case kotayk
    case lori
    case shirak
    case syunik
    case tavush
    case vayots_dzor
    case yerevan
    
    public var country : Locale.Region {
        return Locale.Region.armenia
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
}
