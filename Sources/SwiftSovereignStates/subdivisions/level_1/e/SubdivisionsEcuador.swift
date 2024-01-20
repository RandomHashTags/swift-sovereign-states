//
//  SubdivisionsEcuador.swift
//  
//
//  Created by Evan Anderson on 7/26/22.
//

import Foundation

public enum SubdivisionsEcuador : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Ecuador
    case azuay
    case bolivar
    case canar
    case carchi
    case chimborazo
    case cotopaxi
    case el_oro
    case esmeraldas
    case galapagos
    case guayas
    case imbabura
    case loja
    case los_rios
    case manabi
    case morona_santigao
    case napo
    case orellana
    case pastaza
    case pichincha
    case santa_elena
    case santo_domingo_de_los_tsachilas
    case sucumbios
    case tungurahua
    case zamora_chinchipe
    
    public var country : Locale.Region {
        return Locale.Region.ecuador
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public var wikipediaName : String? {
        switch self {
        case .morona_santigao: return "Morona-Santiago"
        case .zamora_chinchipe: return "Zamora-Chinchipe"
        default: return nil
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .bolivar:
            return "_" + type_suffix + "_(Ecuador)"
        default:
            return nil
        }
    }
}
