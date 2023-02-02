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
    
    public func getCountry() -> Country {
        return Country.barbados
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.parishes
    }
    
    public func getWikipediaURLSuffix() -> String? {
        return ",_Barbados"
    }
}
