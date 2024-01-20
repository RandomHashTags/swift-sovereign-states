//
//  SubdivisionsKazakhstan.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsKazakhstan : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Kazakhstan
    case abai
    case akmola
    case aktobe
    case almaty
    case almaty_region
    case astana
    case atyrau
    case baikonur
    case east_kazakhstan
    case jambyl
    case jetisu
    case karaganda
    case kostanay
    case kyzylorda
    case mangystau
    case north_kazakhstan
    case pavlodar
    case shymkent
    case turkistan
    case ulytau
    case west_kazakhstan
    
    public var country : Locale.Region {
        return Locale.Region.kazakhstan
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .almaty, .astana, .shymkent:
            return SovereignStateSubdivisionType.cities
        default:
            return SovereignStateSubdivisionType.regions
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .almaty,
                .almaty_region,
                .astana,
                .baikonur,
                .shymkent:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
