//
//  SubdivisionsSyria.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsSyria : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Governorates_of_Tunisia
    case al_hasaka
    case aleppo
    case as_suwayda
    case damascus
    case daraa
    case deir_ez_zor
    case hama
    case homs
    case idlib
    case latakia
    case quneitra
    case raqqa
    case rif_dimashq
    case tartus
    
    public var country : Locale.Region {
        return Locale.Region.syria
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.governorates
    }
    
    public var wikipediaURLSuffix : String? {
        return "_" + type_suffix
    }
}
