//
//  SubdivisionsTogo.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsTogo : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Togo
    case centrale
    case kara
    case maritime
    case plateaux
    case savanes
    
    public var country : Locale.Region {
        return Locale.Region.togo
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
}
