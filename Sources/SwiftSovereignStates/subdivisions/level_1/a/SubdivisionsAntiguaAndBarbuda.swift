//
//  SubdivisionsAntiguaAndBarbuda.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public enum SubdivisionsAntiguaAndBarbuda : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Parishes_and_dependencies_of_Antigua_and_Barbuda
    case saint_george
    case saint_john
    case saint_mary
    case saint_paul
    case saint_peter
    case saint_philip
    
    case barbuda
    case redonda
    
    public func getCountry() -> Country {
        return Country.antigua_and_barbuda
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        switch self {
        case .barbuda, .redonda:
            return SovereignStateSubdivisionType.dependencies
        default:
            return SovereignStateSubdivisionType.parishes
        }
    }
    
    public var wikipedia_flag_url_svg_id : String? {
        switch self {
        case .barbuda: return "4/41/Barbuda_Council_Flag"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .barbuda, .redonda:
            return nil
        default:
            return "_" + getTypeSuffix()
        }
    }
}
