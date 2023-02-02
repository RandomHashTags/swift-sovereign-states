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
    
    public func getCountry() -> Country {
        return Country.jamaica
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.parishes
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .saint_james,
                .clarendon,
                .saint_andrew,
                .saint_mary,
                .saint_thomas:
            return "_" + getTypeSuffix() + ",_Jamaica"
        default:
            return nil
        }
    }
}
