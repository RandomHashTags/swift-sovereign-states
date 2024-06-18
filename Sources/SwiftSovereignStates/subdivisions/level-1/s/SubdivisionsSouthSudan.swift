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
}
