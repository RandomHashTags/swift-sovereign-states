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
    
    public var country : Locale.Region {
        return Locale.Region.chad
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .bahr_el_gazel:
            return "_(region_of_Chad)"
        default:
            return "_" + type_suffix
        }
    }
}
