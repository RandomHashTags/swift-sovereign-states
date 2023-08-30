//
//  SubdivisionsMauritania.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsMauritania : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Mauritania
    case adrar
    case assaba
    case brakna
    case dakhlet_nouadhibou
    case gorgol
    case guidimaka
    case hodh_ech_chargui
    case hodh_el_gharbi
    case inchiri
    case nouakchott_nord
    case nouakchott_ouest
    case nouakchott_sud
    case tagant
    case tiris_zemmour
    case trarza
    
    public var country : Locale.Region {
        return Locale.Region.mauritania
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
}
