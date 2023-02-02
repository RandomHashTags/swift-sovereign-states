//
//  SubdivisionsIran.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsIran : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Iran
    case alborz
    case ardabil
    case east_azerbaijan
    case west_azerbaijan
    case bushehr
    case chaharmahal_and_bakhtiari
    case fars
    case gilan
    case golestan
    case hamadan
    case hormozgan
    case ilam
    case isfahan
    case kerman
    case kermanshah
    case north_khorasan
    case razavi_khorasan
    case south_khorasan
    case khuzestan
    case kohgiluyeh_and_boyer_ahmad
    case kurdistan
    case lorestan
    case markazi
    case mazandaran
    case qazvin
    case qom
    case semnan
    case sistan_and_baluchestan
    case tehran
    case yazd
    case zanjan
    
    public var country : Country {
        return Country.iran
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public var real_name : String? {
        switch self {
        case .kohgiluyeh_and_boyer_ahmad: return "Kohgiluyeh and Boyer-Ahmad"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        return "_" + getTypeSuffix().lowercased()
    }
}
