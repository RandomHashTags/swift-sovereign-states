//
//  SubdivisionsChile.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsChile : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Chile
    case antofagasta
    case araucania
    case arica_and_parinacota
    case atacama
    case aysen
    case biobio
    case coquimbo
    case los_lagos
    case los_rios
    case magallanes
    case maule
    case metropolitan
    case nuble
    case o_higgines
    case tarapaca
    case valparaiso
    
    public var country : Locale.Region {
        return Locale.Region.chile
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public var wikipediaName : String? {
        switch self {
        case .metropolitan:
            return "Santiago Metropolitan"
        default:
            return nil
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .antofagasta: return "c/cc/Flag_of_Antofagasta_Region%2C_Chile"
        case .araucania: return "f/fd/Flag_of_La_Araucan%C3%ADa_Region"
        case .arica_and_parinacota: return "f/fa/Flag_of_Arica_y_Parinacota%2C_Chile"
        case .atacama: return "3/38/Flag_of_Atacama%2C_Chile"
        case .aysen: return "0/0d/Flag_of_Aysen%2C_Chile"
        case .biobio: return "c/cd/Flag_of_Biob%C3%ADo_Region%2C_Chile"
        case .coquimbo: return "d/d7/Flag_of_Coquimbo_Region%2C_Chile"
        case .los_lagos: return "1/16/Flag_of_Los_Lagos_Region%2C_Chile"
        case .los_rios: return "a/ac/Flag_of_Los_R%C3%ADos%2C_Chile"
        case .magallanes: return "8/8d/Flag_of_Magallanes%2C_Chile"
        case .maule: return "6/6a/Flag_of_Maule%2C_Chile"
        case .metropolitan: return "8/8d/Flag_of_the_Metropolitan_Region%2C_Chile"
        case .nuble: return "3/30/Flag_of_Ñuble_Region%2C_Chile"
        case .o_higgines: return "2/26/Flag_of_O%27Higgins_Region%2C_Chile"
        case .tarapaca: return "8/87/Flag_of_Tarapaca%2C_Chile"
        case .valparaiso: return "5/50/Flag_of_Valparaiso_Region%2C_Chile"
        }
    }
}
