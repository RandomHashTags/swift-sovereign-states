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
    
    public var type : Locale.Region.SubdivisionType {
        switch self {
        case .almaty, .astana, .shymkent:
            return Locale.Region.SubdivisionType.cities
        default:
            return Locale.Region.SubdivisionType.regions
        }
    }
}
