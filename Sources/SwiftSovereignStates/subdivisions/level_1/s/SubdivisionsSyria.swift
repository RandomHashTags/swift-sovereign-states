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
    
    public var country : Country {
        return Country.syria
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.governorates
    }
    
    public var wikipedia_url_suffix : String? {
        return "_" + type_suffix
    }
}
