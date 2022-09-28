//
//  SubdivisionsBangladesh.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public enum SubdivisionsBangladesh : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Divisions_of_Bangladesh
    case barishal
    case chattogram
    case dhaka
    case khulna
    case mymensingh
    case rajshahi
    case rangpur
    case sylhet
    
    public func getCountry() -> Country {
        return Country.bangladesh
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.divisions
    }
    
    public func getISOAlpha2() -> String? {
        switch self {
        case .barishal: return "A"
        case .chattogram: return "B"
        case .dhaka: return "C"
        case .khulna: return "D"
        case .mymensingh: return "H"
        case .rajshahi: return "E"
        case .rangpur: return "F"
        case .sylhet: return "G"
        }
    }
}
