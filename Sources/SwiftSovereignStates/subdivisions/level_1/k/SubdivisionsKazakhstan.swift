//
//  SubdivisionsKazakhstan.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsKazakhstan : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Kazakhstan
    case akmola
    case aktobe
    case almaty
    case almaty_region
    case astana
    case atyrau
    case baikonur
    case east_kazakhstan
    case jambyl
    case karaganda
    case kostanay
    case kyzylorda
    case mangystau
    case north_kazakhstan
    case pavlodar
    case shymkent
    case turkistan
    case west_kazakhstan
    
    public func getCountry() -> Country {
        return Country.kazakhstan
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        switch self {
        case .almaty, .astana, .shymkent:
            return SovereignStateSubdivisionType.cities
        default:
            return SovereignStateSubdivisionType.regions
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .almaty,
                .almaty_region,
                .astana,
                .baikonur,
                .shymkent:
            return nil
        default:
            return "_" + getTypeSuffix()
        }
    }
}
