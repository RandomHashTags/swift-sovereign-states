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
    
    public var country : Locale.Region {
        return Locale.Region.nepal
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .madhesh,
                .province_1:
            return nil
        default:
            return nil
        }
    }
}
