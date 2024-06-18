//
//  SubdivisionsLiberia.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public enum SubdivisionsLiberia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Liberia
    case bomi
    case bong
    case gbarpolu
    case grand_bassa
    case grand_cape_mount
    case grand_gedeh
    case grand_kru
    case lofa
    case margibi
    case maryland
    case montserrado
    case nimba
    case river_gee
    case rivercess
    case sinoe
    
    public var country : Locale.Region {
        return Locale.Region.liberia
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.counties
    }
}
