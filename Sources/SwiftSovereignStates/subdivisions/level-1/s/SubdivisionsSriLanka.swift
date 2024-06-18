//
//  SubdivisionsSriLanka.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public enum SubdivisionsSriLanka : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Sri_Lanka
    case central
    case eastern
    case north_central
    case north_western
    case northern
    case sabaragamuwa
    case southern
    case uva
    case western
    
    public var country : Locale.Region {
        return Locale.Region.sriLanka
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
}
