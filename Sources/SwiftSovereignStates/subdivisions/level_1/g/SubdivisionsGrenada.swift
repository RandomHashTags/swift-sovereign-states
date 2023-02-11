//
//  SubdivisionsGrenada.swift
//  
//
//  Created by Evan Anderson on 2/11/23.
//

import Foundation

public enum SubdivisionsGrenada : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Parishes_of_Grenada
    case saint_andrew
    case saint_david
    case saint_george
    case saint_john
    case saint_mark
    case saint_patrick
    
    case carriacou_and_petite_martinique
    
    public var country : Country {
        return Country.grenada
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .carriacou_and_petite_martinique:
            return SovereignStateSubdivisionType.dependencies
        default:
            return SovereignStateSubdivisionType.parishes
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .carriacou_and_petite_martinique:
            return nil
        default:
            return "_" + getTypeSuffix() + ",_Grenada"
        }
    }
}
