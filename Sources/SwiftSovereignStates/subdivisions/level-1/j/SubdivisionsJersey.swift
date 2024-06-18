//
//  SubdivisionsJersey.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsJersey : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Parishes_of_Jersey
    case grouville
    case saint_lawrence
    case saint_brelade
    case saint_clement
    case saint_helier
    case saint_john
    case saint_martin
    case saint_ouen
    case saint_peter
    case saint_saviour
    case saint_mary
    case trinity
    
    public var country : Locale.Region {
        return Locale.Region.jersey
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.parishes
    }
}
