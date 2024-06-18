//
//  SubdivisionsTimorLeste.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsTimorLeste : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Municipalities_of_East_Timor
    case aileu
    case ainaro
    case atauro
    case baucau
    case bobonaro
    case cova_lima
    case dili
    case ermera
    case lautem
    case liquica
    case manatuto
    case manufahi
    case viqueque
    
    case oecusse
    
    public var country : Locale.Region {
        return Locale.Region.timorLeste
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .oecusse:
            return SovereignStateSubdivisionType.special_administrative_regions
        default:
            return SovereignStateSubdivisionType.municipalities
        }
    }
}
