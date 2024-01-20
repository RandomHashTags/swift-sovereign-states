//
//  SubdivisionsMarshallIslands.swift
//  
//
//  Created by Evan Anderson on 2/13/23.
//

import Foundation

public enum SubdivisionsMarshallIslands : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/List_of_islands_of_the_Marshall_Islands
    case ailinglaplap
    case ailuk
    case arno
    case aur
    case ebon
    case ebewetok
    case jabat
    case jaluit
    case kili
    case kwajalein
    case lae
    case lib
    case likiep
    case majuro
    case maloelap
    case mejit
    case mili
    case namorik
    case namu
    case rongelap
    case ujae
    case utirik
    case wotho
    case wotje
    
    public var country : Locale.Region {
        return Locale.Region.marshallIslands
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.atolls
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .jabat,
                .kili,
                .lib,
                .mejit:
            return "_Island"
        case .majuro:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
