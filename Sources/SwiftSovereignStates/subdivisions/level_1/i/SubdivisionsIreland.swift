//
//  SubdivisionsIreland.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsIreland : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Ireland
    case connacht
    case leinster
    case munster
    case ulster
    
    public func getCountry() -> Country {
        return Country.ireland
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public func getWikipediaURLSuffix() -> String? {
        return nil
    }
}
