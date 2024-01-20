//
//  SubdivisionsZambia.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsZambia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Zambia
    case central
    case copperbelt
    case eastern
    case luapula
    case lusaka
    case muchinga
    case north_western
    case northern
    case southern
    case western
    
    public var country : Locale.Region {
        return Locale.Region.zambia
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public var wikipediaName : String? {
        switch self {
        case .north_western:
            return "North-Western"
        default:
            return nil
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .central,
                .eastern,
                .north_western,
                .northern,
                .southern,
                .western:
            return "_Province,_Zambia"
        default:
            return "_Province"
        }
    }
    
    public var neighbors : [any SovereignStateSubdivision] {
        switch self {
        case .central:
            return [SubdivisionsZambia.western, SubdivisionsZambia.north_western, SubdivisionsZambia.copperbelt, SubdivisionsZambia.luapula, SubdivisionsZambia.muchinga, SubdivisionsZambia.eastern, SubdivisionsZambia.lusaka, SubdivisionsZambia.southern]
        case .copperbelt:
            return [SubdivisionsZambia.north_western, SubdivisionsZambia.central]
        case .eastern:
            return [SubdivisionsZambia.muchinga, SubdivisionsZambia.central, SubdivisionsZambia.lusaka]
        case .luapula:
            return [SubdivisionsZambia.northern, SubdivisionsZambia.muchinga, SubdivisionsZambia.central]
        case .lusaka:
            return [SubdivisionsZambia.southern, SubdivisionsZambia.central, SubdivisionsZambia.eastern]
        case .muchinga:
            return [SubdivisionsZambia.northern, SubdivisionsZambia.luapula, SubdivisionsZambia.central, SubdivisionsZambia.eastern]
        case .north_western:
            return [SubdivisionsZambia.western, SubdivisionsZambia.central, SubdivisionsZambia.copperbelt]
        case .northern:
            return [SubdivisionsZambia.luapula, SubdivisionsZambia.muchinga]
        case .southern:
            return [SubdivisionsZambia.western, SubdivisionsZambia.central, SubdivisionsZambia.lusaka]
        case .western:
            return [SubdivisionsZambia.north_western, SubdivisionsZambia.central, SubdivisionsZambia.southern]
        }
    }
}
