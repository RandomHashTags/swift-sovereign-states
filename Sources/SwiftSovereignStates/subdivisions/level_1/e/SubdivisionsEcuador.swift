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
    
    public func getCountry() -> Country {
        return Country.ecuador
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public func getConditionalName() -> String? {
        switch self {
        case .morona_santigao: return "Morona-Santiago"
        case .zamora_chinchipe: return "Zamora-Chinchipe"
        default: return nil
        }
    }
    
    public var real_name : String? {
        switch self {
        case .bolivar: return "Bolívar"
        case .canar: return "Cañar"
        case .galapagos: return "Galápagos"
        case .los_rios: return "Los Ríos"
        case .manabi: return " Manabí"
        case .santo_domingo_de_los_tsachilas: return "Santo Domingo de los Tsáchilas"
        case .sucumbios: return "Sucumbíos"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .bolivar:
            return "_" + getTypeSuffix() + "_(Ecuador)"
        default:
            return nil
        }
    }
}
