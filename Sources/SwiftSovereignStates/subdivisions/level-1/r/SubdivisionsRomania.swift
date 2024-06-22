//
//  SubdivisionsRomania.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public enum SubdivisionsRomania : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Counties_of_Romania
    case alba
    case arad
    case arges
    case bacau
    case bihor
    case bistrita_nasaud
    case botosani
    case braila
    case brasov
    case buzau
    case calarasi
    case caras_severin
    case cluj
    case constanta
    case covasna
    case dambovita
    case dolj
    case galati
    case giurgiu
    case gorj
    case harghita
    case hunedoara
    case ialomita
    case iasi
    case ilfov
    case maramures
    case mehedinti
    case mures
    case neamt
    case olt
    case prahova
    case salaj
    case satu_mare
    case sibiu
    case suceava
    case teleorman
    case timis
    case tulcea
    case valcea
    case vaslui
    case vrancea
    
    case bucharest
    
    public var country : Locale.Region {
        return Locale.Region.romania
    }
    
    public var type : Locale.Region.SubdivisionType {
        switch self {
        case .bucharest:
            return Locale.Region.SubdivisionType.cities
        default:
            return Locale.Region.SubdivisionType.counties
        }
    }
}
