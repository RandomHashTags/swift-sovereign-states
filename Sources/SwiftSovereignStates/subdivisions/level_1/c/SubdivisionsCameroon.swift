//
//  SubdivisionsCameroon.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public enum SubdivisionsCameroon : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Cameroon
    case adamawa
    case central
    case east
    case far_north
    case littoral
    case north
    case nortwest
    case south
    case southwest
    case west
    
    public func getCountry() -> Country {
        return Country.cameroon
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
}
