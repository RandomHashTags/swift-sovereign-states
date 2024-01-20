//
//  SubdivisionsUkraine.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public enum SubdivisionsUkraine : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Ukraine
    case cherkasy
    case chernihiv
    case chernivtsi
    case dnipropetrovsk
    case donetsk
    case ivano_frankivsk
    case kharkiv
    case kherson
    case khmelnytskyi
    case kirovohrad
    case kyiv
    case luhansk
    case lviv
    case mykolaiv
    case odesa
    case poltava
    case rivne
    case sumy
    case ternopil
    case vinnytsia
    case volyn
    case zakarpattia
    case zaporizhzhia
    case zhytomyr
    
    case crimea
    
    case kyiv_city
    case sevastopol
    
    public var country : Locale.Region {
        return Locale.Region.ukraine
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .crimea:
            return SovereignStateSubdivisionType.autonomous_republics
        case .kyiv_city,
                .sevastopol:
            return SovereignStateSubdivisionType.special_self_governing_cities
        default:
            return SovereignStateSubdivisionType.oblasts
        }
    }
    
    public var wikipediaURLPrefix : String? {
        switch self {
        case .crimea:
            return "Autonomous_Republic_of_"
        default:
            return nil
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .crimea,
                .kyiv_city,
                .sevastopol:
            return nil
        default:
            return "_" + type_suffix
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .cherkasy: return "8/85/Flag_of_Cherkasy_Oblast"
        case .chernihiv: return "f/f7/Flag_of_Chernihiv_Oblast"
        case .chernivtsi: return "a/a6/Flag_of_Chernivtsi_Oblast"
        case .dnipropetrovsk: return "c/cf/Flag_of_Dnipropetrovsk_Oblast"
        case .donetsk: return "5/5d/Flag_of_Donetsk_Oblast"
        case .ivano_frankivsk: return "6/65/Flag_of_Ivano-Frankivsk_Oblast2"
        case .kharkiv: return "4/41/Flag_of_Kharkiv_Oblast"
        case .kherson: return "c/c3/Flag_of_Kherson_Oblast"
        case .khmelnytskyi: return "3/37/Flag_of_Khmelnytskyi_Oblast"
        case .kirovohrad: return "0/09/Flag_of_Kirovohrad_Oblast"
        case .kyiv: return "b/b2/Flag_of_Kyiv_Oblast"
        case .luhansk: return "7/77/Flag_of_Luhansk_Oblast"
        case .lviv: return "8/82/Flag_of_Lviv_Oblast"
        case .mykolaiv: return "e/e1/Flag_of_Mykolaiv_Oblast"
        case .odesa: return "b/ba/Flag_of_Odesa_Oblast"
        case .poltava: return "d/d3/Flag_of_Poltava_Oblast"
        case .rivne: return "3/3c/Flag_of_Rivne_Oblast"
        case .sumy: return "2/21/Flag_of_Sumy_Oblast"
        case .ternopil: return "d/dc/Flag_of_Ternopil_Oblast"
        case .vinnytsia: return "0/03/Flag_of_Vinnytsia_Oblast"
        case .volyn: return "0/00/Flag_of_Volyn_Oblast"
        case .zakarpattia: return "9/93/Flag_of_Zakarpattia_Oblast"
        case .zaporizhzhia: return "b/b8/Flag_of_Zaporizhia_Oblast"
        case .zhytomyr: return "6/69/Flag_of_Zhytomyr_Oblast"
            
        case .crimea: return "a/aa/Flag_of_Crimea"
            
        case .kyiv_city: return "3/35/Flag_of_Kyiv_Kurovskyi"
        case .sevastopol: return "1/14/Flag_of_Sevastopol"
        }
    }
}
