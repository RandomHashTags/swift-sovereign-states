//
//  SubdivisionsGabon.swift
//
//
//  Created by Evan Anderson on 1/24/24.
//

import Foundation

public enum SubdivisionsGabon : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Subdivisions_of_Gabon
    case estuaire
    case haut_ogooue
    case moyen_ogooue
    case ngounie
    case nyanga
    case ogooue_ivindo
    case ogooue_lolo
    case ogooue_maritime
    case woleu_ntem
    
    public var country : Locale.Region {
        return Locale.Region.gabon
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
}
