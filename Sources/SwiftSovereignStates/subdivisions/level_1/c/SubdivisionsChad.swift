//
//  SubdivisionsChad.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public enum SubdivisionsChad : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Chad
    case bahr_el_gazel
    case batha
    case borkou
    case chari_baguirmi
    case ennedi_est
    case ennedi_ouest
    case guera
    case hadjer_lamis
    case kanem
    case lac
    case logone_occidental
    case logone_oriental
    case mandoul
    case mayo_kebbi_est
    case mayo_kebbi_ouest
    case moyen_chari
    case n_djamena
    case ouaddai
    case salamat
    case sila
    case tandjile
    case tibesti
    case wadi_fira
    
    public var country : Country {
        return Country.chad
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public var real_name : String? {
        switch self {
        case .chari_baguirmi: return "Chari-Baguirmi"
        case .ennedi_est: return "Ennedi-Est"
        case .ennedi_ouest: return "Ennedi-Ouest"
        case .guera: return "Guéra"
        case .hadjer_lamis: return "Hadjer-Lamis"
        case .mayo_kebbi_est: return "Mayo-Kebbi Est"
        case .mayo_kebbi_ouest: return "Mayo-Kebbi Ouest"
        case .moyen_chari: return "Moyen-Chari"
        case .n_djamena: return "N'Djamena"
        case .ouaddai: return "Ouaddaï"
        case .tandjile: return "Tandjilé"
        default: return nil
        }
    }
    
    public var wikipedia_url_suffix : String? {
        switch self {
        case .bahr_el_gazel:
            return "_(region_of_Chad)"
        default:
            return "_" + getTypeSuffix()
        }
    }
}
