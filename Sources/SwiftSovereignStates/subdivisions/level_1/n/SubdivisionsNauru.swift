//
//  SubdivisionsNauru.swift
//  
//
//  Created by Evan Anderson on 2/14/23.
//

import Foundation

public enum SubdivisionsNauru : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/List_of_settlements_in_Nauru
    case aiwo
    case anabar
    case anetan
    case anibare
    case baiti
    case boe
    case buada
    case denigomodu
    case ewa
    case ljuw
    case meneng
    case nibok
    case uaboe
    case yaren
    
    public var country : Locale.Region {
        return Locale.Region.nauru
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .ewa:
            return "_" + type_suffix + ",_Nauru"
        default:
            return "_" + type_suffix
        }
        
    }
}
