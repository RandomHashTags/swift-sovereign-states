//
//  SubdivisionsBarbados.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public enum SubdivisionsBarbados : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Parishes_of_Barbados
    case christ_church
    case saint_andrew
    case saint_george
    case saint_james
    case saint_john
    case saint_joseph
    case saint_lucy
    case saint_michael
    case saint_peter
    case saint_philip
    case saint_thomas
    
    public var country : Locale.Region {
        return Locale.Region.barbados
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.parishes
    }
    
    public var wikipediaURLSuffix : String? {
        return ",_Barbados"
    }
}
