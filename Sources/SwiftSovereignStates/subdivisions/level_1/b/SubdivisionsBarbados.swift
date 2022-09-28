//
//  SubdivisionsBarbados.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public enum SubdivisionsBarbados : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Parishes_of_Barbados
    case christ_church
    case st_andrew
    case st_george
    case st_james
    case st_john
    case st_joseph
    case st_lucy
    case st_michael
    case st_peter
    case st_philip
    case st_thomas
    
    public func getCountry() -> Country {
        return Country.barbados
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.parishes
    }
}
