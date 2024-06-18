//
//  SubdivisionsSomalia.swift
//  
//
//  Created by Evan Anderson on 2/12/23.
//

import Foundation

public enum SubdivisionsSomalia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/States_and_regions_of_Somalia
    case galmudug
    case hirshabelle
    case jubaland
    case puntland
    case south_west
    case somaliland
    
    public var country : Locale.Region {
        return Locale.Region.somalia
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.federal_member_states
    }
}
