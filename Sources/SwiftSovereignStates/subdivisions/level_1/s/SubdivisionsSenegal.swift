//
//  SubdivisionsSenegal.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsSenegal : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Senegal
    case dakar
    case diourbel
    case fatick
    case kaffrine
    case kaolack
    case kedougou
    case kolda
    case louga
    case matam
    case saint_louis
    case sedhiou
    case tambacounda
    case thies
    case ziguinchor
    
    public var country : Locale.Region {
        return Locale.Region.senegal
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
}
