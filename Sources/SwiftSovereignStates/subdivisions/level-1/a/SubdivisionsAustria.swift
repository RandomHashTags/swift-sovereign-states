//
//  SubdivisionsAustria.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public enum SubdivisionsAustria : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/States_of_Austria
    case burgenland
    case carinthia
    case lower_austria
    case salzburg
    case styria
    case tyrol
    case upper_austria
    case vienna
    case vorarlberg
    
    public var country : Locale.Region {
        return Locale.Region.austria
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.states
    }
}
