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
    
    public var type : Locale.Region.SubdivisionType {
        return Locale.Region.SubdivisionType.provinces
    }
    
    public var neighbors : [any Locale.Region.Subdivision.Level1Protocol] {
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
