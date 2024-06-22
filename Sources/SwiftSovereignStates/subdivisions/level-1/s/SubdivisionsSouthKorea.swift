//
//  SubdivisionsSouthKorea.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsSouthKorea : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_South_Korea
    case busan
    
    case north_chungcheong
    case south_chungcheong
    
    case daegu
    case daejeon
    case gangwon
    case gyeonggi
    case gwangju
    
    case north_gyeongsang
    case south_gyeongsang
    
    case incheon
    case jeju
    
    case north_jeolla
    case south_jeolla
    
    case sejong
    case seoul
    case ulsan
    
    public var country : Locale.Region {
        return Locale.Region.southKorea
    }
    
    public var type : Locale.Region.SubdivisionType {
        switch self {
        case .busan,
                .daegu,
                .daejeon,
                .gwangju,
                .incheon,
                .ulsan:
            return Locale.Region.SubdivisionType.metropolitan_cities
        case .sejong:
            return Locale.Region.SubdivisionType.special_self_governing_cities
        case .seoul:
            return Locale.Region.SubdivisionType.special_cities
        default:
            return Locale.Region.SubdivisionType.provinces
        }
    }
}
