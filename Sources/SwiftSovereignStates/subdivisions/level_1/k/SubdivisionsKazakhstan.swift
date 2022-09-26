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
    case atyrau
    case baikonur
    case east_kazakhstan
    case jambyl
    case karaganda
    case kostanay
    case kyzylorda
    case mangystau
    case north_kazakhstan
    case nur_sultan
    case pavlodar
    case shymkent
    case turkistan
    case west_kazakhstan
    
    public func getCountry() -> Country {
        return Country.kazakhstan
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public func getRealName() -> String? {
        switch self {
        case .nur_sultan: return "Nur-Sultan"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .almaty,
                .almaty_region,
                .baikonur,
                .nur_sultan,
                .shymkent:
            return ""
        default:
            return nil
        }
    }
}
