//
//  SubdivisionsGabonLevel1.swift
//
//
//  Created by Evan Anderson on 1/24/24.
//

import Foundation

public typealias SubdivisionsGabonLevel1 = Locale.Region.Subdivision.Level1.Gabon

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.gabon, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct Gabon : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsGabonLevel1 { // https://en.wikipedia.org/wiki/Subdivisions_of_Gabon | https://en.wikipedia.org/wiki/ISO_3166-2:GA
    static let estuaire = get("1")
    static let haut_ogooue = get("2")
    static let moyen_ogooue = get("3")
    static let ngounie = get("4")
    static let nyanga = get("5")
    static let ogooue_ivindo = get("6")
    static let ogooue_lolo = get("7")
    static let ogooue_maritime = get("8")
    static let woleu_ntem = get("9")
}
