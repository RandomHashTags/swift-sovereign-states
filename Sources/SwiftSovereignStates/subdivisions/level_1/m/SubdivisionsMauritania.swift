//
//  SubdivisionsMauritania.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsMauritania : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Mauritania
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
    
    public func getCountry() -> Country {
        return Country.mauritania
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public func getRealName() -> String? {
        switch self {
        case .nouakchott_nord: return "Nouakchott-Nord"
        case .nouakchott_ouest: return "Nouakchott-Ouest"
        case .nouakchott_sud: return "Nouakchott-Sud"
        default: return nil
        }
    }
}
