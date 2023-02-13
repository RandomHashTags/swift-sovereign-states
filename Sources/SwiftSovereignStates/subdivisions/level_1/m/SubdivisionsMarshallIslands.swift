//
//  SubdivisionsMarshallIslands.swift
//  
//
//  Created by Evan Anderson on 2/13/23.
//

import Foundation

public enum SubdivisionsMarshallIslands : String, SovereignStateSubdivision {
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
    
    public var country: Country {
        return Country.marshall_islands
    }
    
    public var type: SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.atolls
    }
    
    public var wikipedia_url_suffix: String? {
        switch self {
        case .jabat,
                .kili,
                .lib,
                .mejit:
            return "_Island"
        case .majuro:
            return nil
        default:
            return "_" + getTypeSuffix()
        }
    }
}