//
//  SubdivisionsTogo.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsTogo : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Togo
    case centrale
    case kara
    case maritime
    case plateaux
    case savanes
    
    public func getCountry() -> Country {
        return Country.togo
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
}
