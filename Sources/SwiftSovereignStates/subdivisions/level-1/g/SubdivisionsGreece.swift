//
//  SubdivisionsGreece.swift
//  
//
//  Created by Evan Anderson on 7/26/22.
//

import Foundation

public enum SubdivisionsGreece : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_regions_of_Greece
    case attica
    case central_greece
    case central_macedonia
    case crete
    case eastern_macedonia_and_thrace
    case epirus
    case ionian_islands
    case mount_athos
    case north_aegean
    case peloponnese
    case south_aegean
    case thessaly
    case western_greece
    case western_macedonia
    
    public var country : Locale.Region {
        return Locale.Region.greece
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
}