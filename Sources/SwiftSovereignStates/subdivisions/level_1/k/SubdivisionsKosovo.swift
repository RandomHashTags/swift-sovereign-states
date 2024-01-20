//
//  SubdivisionsKosovo.swift
//
//
//  Created by Evan Anderson on 1/19/24.
//

import Foundation

public enum SubdivisionsKosovo : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Kosovo
    case ferizaj
    case gjakova
    case gjilan
    case mitrovica
    case peja
    case pristina
    case prizren
    
    public var country : Locale.Region {
        return Locale.Region.kosovo
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
    
    public var wikipediaURLPrefix : String? {
        return "District_of_"
    }
}
