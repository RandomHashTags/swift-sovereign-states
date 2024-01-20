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
    
    public var country : Locale.Region {
        return Locale.Region.peru
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.departments
    }
    
    public var wikipediaURLPrefix : String? {
        switch self {
        case .callao:
            return nil
        default:
            return "Department_of_"
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .amazonas:
            return ",_Peru"
        default:
            return nil
        }
    }
}
