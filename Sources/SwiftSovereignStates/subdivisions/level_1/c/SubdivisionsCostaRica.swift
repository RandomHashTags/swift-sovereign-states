//
//  SubdivisionsCostaRica.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsCostaRica : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Costa_Rica
    case alajuela
    case cartago
    case guanacaste
    case heredia
    case limon
    case puntarenas
    case san_jose
    
    public var country : Locale.Region {
        return Locale.Region.costaRica
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .alajuela: return "9/91/Bandera_de_la_Provincia_de_Alajuela"
        case .cartago: return "0/06/Bandera_de_la_Provincia_de_Cartago"
        case .guanacaste: return "0/04/Bandera_de_la_Provincia_de_Guanacaste"
        case .heredia: return "3/35/Bandera_de_la_Provincia_de_Heredia"
        case .limon: return "3/38/Bandera_de_la_Provincia_de_Limón"
        case .puntarenas: return "e/e1/Bandera_de_la_Provincia_de_Puntarenas"
        case .san_jose: return "e/ee/Bandera_de_la_Provincia_de_San_José"
        }
    }
    
    public var neighbors : [any SovereignStateSubdivision] {
        switch self {
        case .alajuela:
            return [SubdivisionsCostaRica.guanacaste, SubdivisionsCostaRica.puntarenas, SubdivisionsCostaRica.san_jose, SubdivisionsCostaRica.heredia]
        case .cartago:
            return [SubdivisionsCostaRica.limon, SubdivisionsCostaRica.san_jose]
        case .guanacaste:
            return [SubdivisionsCostaRica.alajuela, SubdivisionsCostaRica.puntarenas]
        case .heredia:
            return [SubdivisionsCostaRica.alajuela, SubdivisionsCostaRica.san_jose, SubdivisionsCostaRica.limon]
        case .limon:
            return [SubdivisionsCostaRica.heredia, SubdivisionsCostaRica.cartago, SubdivisionsCostaRica.puntarenas]
        case .puntarenas:
            return [SubdivisionsCostaRica.limon, SubdivisionsCostaRica.san_jose, SubdivisionsCostaRica.alajuela, SubdivisionsCostaRica.guanacaste]
        case .san_jose:
            return [SubdivisionsCostaRica.puntarenas, SubdivisionsCostaRica.limon, SubdivisionsCostaRica.cartago, SubdivisionsCostaRica.heredia, SubdivisionsCostaRica.alajuela]
        }
    }
}
