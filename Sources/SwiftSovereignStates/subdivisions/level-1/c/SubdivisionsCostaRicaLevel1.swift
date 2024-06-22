//
//  SubdivisionsCostaRicaLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsCostaRicaLevel1 = Locale.Region.Subdivision.Level1.CostaRica

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.costaRica, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct CostaRica : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsCostaRicaLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Costa_Rica | https://en.wikipedia.org/wiki/ISO_3166-2:CR
    static let alajuela = get("A")
    static let cartago = get("C")
    static let guanacaste = get("G")
    static let heredia = get("H")
    static let limon = get("L")
    static let puntarenas = get("P")
    static let san_jose = get("SJ")
}

public extension SubdivisionsCostaRicaLevel1 {
    var neighbors : [any Locale.Region.Subdivision.Level1Protocol] {
        switch self {
        case .alajuela:
            return [SubdivisionsCostaRicaLevel1.guanacaste, SubdivisionsCostaRicaLevel1.puntarenas, SubdivisionsCostaRicaLevel1.san_jose, SubdivisionsCostaRicaLevel1.heredia]
        case .cartago:
            return [SubdivisionsCostaRicaLevel1.limon, SubdivisionsCostaRicaLevel1.san_jose]
        case .guanacaste:
            return [SubdivisionsCostaRicaLevel1.alajuela, SubdivisionsCostaRicaLevel1.puntarenas]
        case .heredia:
            return [SubdivisionsCostaRicaLevel1.alajuela, SubdivisionsCostaRicaLevel1.san_jose, SubdivisionsCostaRicaLevel1.limon]
        case .limon:
            return [SubdivisionsCostaRicaLevel1.heredia, SubdivisionsCostaRicaLevel1.cartago, SubdivisionsCostaRicaLevel1.puntarenas]
        case .puntarenas:
            return [SubdivisionsCostaRicaLevel1.limon, SubdivisionsCostaRicaLevel1.san_jose, SubdivisionsCostaRicaLevel1.alajuela, SubdivisionsCostaRicaLevel1.guanacaste]
        case .san_jose:
            return [SubdivisionsCostaRicaLevel1.puntarenas, SubdivisionsCostaRicaLevel1.limon, SubdivisionsCostaRicaLevel1.cartago, SubdivisionsCostaRicaLevel1.heredia, SubdivisionsCostaRicaLevel1.alajuela]
        default:
            return []
        }
    }
}