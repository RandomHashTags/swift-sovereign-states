//
//  SubdivisionsBelize.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public enum SubdivisionsBelize : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Belize
    case belize
    case cayo
    case corozal
    case orange_walk
    case stann_creek
    case toledo
    
    public func getCountry() -> Country {
        return Country.belize
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
}
