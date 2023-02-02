//
//  SubdivisionsPeru.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsPeru : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Peru
    case amazonas
    case ancash
    case apurimac
    case arequipa
    case ayacucho
    case cajamarca
    case callao
    case cuzco
    case huancavelica
    case huanuco
    case ica
    case junin
    case la_libertad
    case lambayeque
    case lima
    case loreto
    case madre_de_dios
    case moquegua
    case pasco
    case piura
    case puno
    case san_martin
    case tacna
    case tumbes
    case ucayali
    
    public var country : Country {
        return Country.peru
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.departments
    }
    
    public var real_name : String? {
        switch self {
        case .apurimac: return "Apurímac"
        case .huanuco: return "Huánuco"
        case .junin: return "Junín"
        case .la_libertad: return "La Libertad"
        case .madre_de_dios: return "Madre de Dios"
        case .san_martin: return "San Martín"
        default: return nil
        }
    }
    
    public func getWikipediaURLPrefix() -> String? {
        switch self {
        case .callao:
            return nil
        default:
            return "Department_of_"
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .amazonas:
            return ",_Peru"
        default:
            return nil
        }
    }
}
