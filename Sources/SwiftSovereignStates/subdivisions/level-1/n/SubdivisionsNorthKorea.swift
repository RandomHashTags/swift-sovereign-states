//
//  SubdivisionsNorthKorea.swift
//
//
//  Created by Evan Anderson on 1/24/24.
//

import Foundation

public enum SubdivisionsNorthKorea : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_North_Korea
    case chagang
    case kangwon
    case north_hamgyong
    case north_hwanghae
    case north_pyongan
    case ryanggang
    case south_hamgyong
    case south_hwanghae
    case south_pyongan
    
    public var country : Locale.Region {
        return Locale.Region.northKorea
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
}
