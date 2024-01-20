//
//  SubdivisionsDominica.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsDominica : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Parishes_of_Dominica
    case saint_andrew
    case saint_david
    case saint_george
    case saint_john
    case saint_joseph
    case saint_luke
    case saint_mark
    case saint_patrick
    case saint_paul
    case saint_peter
    
    public var country : Locale.Region {
        return Locale.Region.dominica
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.parishes
    }
    
    public var wikipediaURLSuffix : String? {
        return "_" + type_suffix + ",_Dominica"
    }
    
    public var neighbors : [any SovereignStateSubdivision] {
        switch self {
        case .saint_andrew:
            return [SubdivisionsDominica.saint_john, SubdivisionsDominica.saint_peter, SubdivisionsDominica.saint_joseph, SubdivisionsDominica.saint_david]
        case .saint_david:
            return [SubdivisionsDominica.saint_andrew, SubdivisionsDominica.saint_joseph, SubdivisionsDominica.saint_paul, SubdivisionsDominica.saint_george, SubdivisionsDominica.saint_patrick]
        case .saint_george:
            return [SubdivisionsDominica.saint_paul, SubdivisionsDominica.saint_david, SubdivisionsDominica.saint_patrick, SubdivisionsDominica.saint_luke]
        case .saint_john:
            return [SubdivisionsDominica.saint_andrew, SubdivisionsDominica.saint_peter]
        case .saint_joseph:
            return [SubdivisionsDominica.saint_peter, SubdivisionsDominica.saint_andrew, SubdivisionsDominica.saint_david, SubdivisionsDominica.saint_paul]
        case .saint_luke:
            return [SubdivisionsDominica.saint_george, SubdivisionsDominica.saint_patrick, SubdivisionsDominica.saint_mark]
        case .saint_mark:
            return [SubdivisionsDominica.saint_luke, SubdivisionsDominica.saint_patrick]
        case .saint_patrick:
            return [SubdivisionsDominica.saint_mark, SubdivisionsDominica.saint_luke, SubdivisionsDominica.saint_george, SubdivisionsDominica.saint_david]
        case .saint_paul:
            return [SubdivisionsDominica.saint_joseph, SubdivisionsDominica.saint_david, SubdivisionsDominica.saint_george]
        case .saint_peter:
            return [SubdivisionsDominica.saint_john, SubdivisionsDominica.saint_andrew, SubdivisionsDominica.saint_joseph]
        }
    }
}
