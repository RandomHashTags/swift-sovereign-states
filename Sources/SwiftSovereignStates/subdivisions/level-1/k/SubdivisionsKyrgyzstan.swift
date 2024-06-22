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
    
    public var type : Locale.Region.SubdivisionType {
        switch self {
        case .bishkek, .osh_city:
            return Locale.Region.SubdivisionType.independent_cities
        default:
            return Locale.Region.SubdivisionType.regions
        }
    }
}
