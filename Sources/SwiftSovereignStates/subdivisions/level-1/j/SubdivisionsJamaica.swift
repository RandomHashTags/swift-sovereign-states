//
//  SubdivisionsJamaica.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsJamaica : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Parishes_of_Jamaica
    case hanover
    case saint_elizabeth
    case saint_james
    case trelawny
    case westmoreland
    case clarendon
    case manchester
    case saint_ann
    case saint_catherine
    case saint_mary
    case kingston
    case portland
    case saint_andrew
    case saint_thomas
    
    public var country : Locale.Region {
        return Locale.Region.jamaica
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.parishes
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .saint_james,
                .clarendon,
                .saint_andrew,
                .saint_mary,
                .saint_thomas:
            return "_" + type_suffix + ",_Jamaica"
        default:
            return nil
        }
    }
}
