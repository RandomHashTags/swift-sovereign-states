//
//  SubdivisionsCzechRepublic.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public enum SubdivisionsCzechRepublic : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_the_Czech_Republic
    case central_bohemian
    case hradec_kralove
    case karlovy_vary
    case liberec
    case moravian_silesian
    case olomouc
    case pardubice
    case plzen
    case prague
    case south_bohemian
    case south_moravian
    case usti_nad_labem
    case vysocina
    case zlin
    
    public var country : Locale.Region {
        return Locale.Region.czechia
    }
    
    public var type : Locale.Region.SubdivisionType {
        switch self {
        default:
            return Locale.Region.SubdivisionType.regions
        }
    }
}
