//
//  SubdivisionsNepal.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsNepal : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Nepal
    case bagmati
    case gandaki
    case karnali
    case lumbini
    case madhesh
    case province_1
    case sudurpashchim
    
    public func getCountry() -> Country {
        return Country.nepal
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public func getRealName() -> String? {
        switch self {
        case .province_1: return "Province No. 1"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix(typeSuffix: String) -> String? {
        switch self {
        case .madhesh,
                .province_1:
            return ""
        default:
            return nil
        }
    }
}
