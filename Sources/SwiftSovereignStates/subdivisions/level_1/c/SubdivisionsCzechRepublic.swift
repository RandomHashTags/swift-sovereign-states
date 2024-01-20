//
//  SubdivisionsCzechRepublic.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public enum SubdivisionsCzechRepublic : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_the_Czech_Republic
    case central_bohemian
    case hradec_kralove
    case karlovy_vary
    case liberec
    case moravian_silesian
    case olomouc
    case pardubice
    case plzen
    case prague
    case south_bohemian
    case south_moravian
    case usti_nad_labem
    case vysocina
    case zlin
    
    public var country : Locale.Region {
        return Locale.Region.czechia
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        default:
            return SovereignStateSubdivisionType.regions
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .prague: return "d/d2/Flag_of_Prague"
        case .central_bohemian: return "0/06/Flag_of_Central_Bohemian_Region"
        case .south_bohemian: return "f/f7/Flag_of_South_Bohemian_Region"
        case .plzen: return "4/4b/Flag_of_Plzen_Region"
        case .karlovy_vary: return "0/0b/Flag_of_Karlovy_Vary_Region"
        case .usti_nad_labem: return "1/13/Flag_of_Usti_nad_Labem_Region"
        case .liberec: return "4/45/Flag_of_Liberec_Region"
        case .hradec_kralove: return "b/bc/Flag_of_Hradec_Kralove_Region"
        case .pardubice: return "c/c7/Flag_of_Pardubice_Region"
        case .vysocina: return "1/14/Flag_of_Vysocina_Region"
        case .south_moravian: return "d/d7/Flag_of_South_Moravian_Region"
        case .olomouc: return "6/66/Flag_of_Olomouc_Region"
        case .zlin: return "8/84/Flag_of_Zlin_Region"
        case .moravian_silesian: return "f/f3/Flag_of_Moravian-Silesian_Region"
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .prague:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
