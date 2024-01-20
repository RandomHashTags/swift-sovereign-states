//
//  SubdivisionsSouthSudan.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public enum SubdivisionsSouthSudan : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/States_of_South_Sudan
    case central_equatoria
    case eastern_equatoria
    case jonglei
    case lakes
    case northern_bahr_el_ghazal
    case unity
    case upper_nile
    case warrap
    case western_bahr_el_ghazal
    case western_equatoria
    
    case abyei
    case greater_pibor
    case ruweng
    
    public var country : Locale.Region {
        return Locale.Region.southSudan
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .abyei, .greater_pibor, .ruweng:
            return SovereignStateSubdivisionType.administrative_areas
        default:
            return SovereignStateSubdivisionType.states
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .central_equatoria: return "8/80/Flag_of_Central_Equatoria.png"
        case .eastern_equatoria: return "7/74/Flag_of_Eastern_Equatoria.png"
        case .jonglei: return "1/1a/Flag_of_Jonglei.png"
        case .lakes: return "2/28/Flag_of_Lakes_State.png"
        case .northern_bahr_el_ghazal: return "9/9f/Flag_of_Northern_Bahr_el_Ghazal.png"
        case .ruweng: return "6/6f/Flag_of_Ruweng.png"
        case .unity: return "d/d2/Flag_of_Unity_State.png"
        case .upper_nile: return "0/0d/Flag_of_Upper_Nile_State.png"
        case .warrap: return "5/52/Flag_of_Warrap_State.png"
        case .western_bahr_el_ghazal: return "e/e6/Flag_of_Western_Bahr_el_Ghazal.png"
        case .western_equatoria: return "6/65/Flag_of_Western_Equatoria.png"
            
        case .abyei: return "2/2e/Flag_of_the_Abyei_Area.png"
        case .greater_pibor: return "1/19/Flag_of_Greater_Pibor_Administrative_Area.png"
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .central_equatoria,
                .eastern_equatoria,
                .northern_bahr_el_ghazal,
                .western_bahr_el_ghazal,
            
                .abyei,
                .ruweng:
            return nil
        case .lakes:
            return "_(" + type_suffix.lowercased() + ")"
        default:
            return "_" + type_suffix
        }
    }
}
