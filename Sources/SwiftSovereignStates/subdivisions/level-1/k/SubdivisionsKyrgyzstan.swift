//
//  SubdivisionsKyrgyzstan.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public enum SubdivisionsKyrgyzstan : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Kyrgyzstan
    case batken
    case chuy
    case issyk_kul
    case jalal_abad
    case naryn
    case osh
    case talas
    
    case bishkek
    case osh_city
    
    public var country : Locale.Region {
        return Locale.Region.kyrgyzstan
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .bishkek, .osh_city:
            return SovereignStateSubdivisionType.independent_cities
        default:
            return SovereignStateSubdivisionType.regions
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .bishkek, .osh_city:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
