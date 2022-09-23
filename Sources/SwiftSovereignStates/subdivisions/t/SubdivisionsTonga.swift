//
//  SubdivisionsTonga.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsTonga : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Tonga
    case eua
    case ha_apai
    case niua_islands
    case tongoatapu
    case vava_u
    
    public func getCountry() -> Country {
        return Country.tonga
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
    
    public func getRealName() -> String? {
        switch self {
        case .eua: return "'Eua"
        case .ha_apai: return "Ha'apai"
        case .vava_u: return "Vava'u"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        return ""
    }
}
