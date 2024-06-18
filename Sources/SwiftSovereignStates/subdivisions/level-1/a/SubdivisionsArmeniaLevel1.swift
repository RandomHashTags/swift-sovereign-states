//
//  SubdivisionsArmeniaLevel1.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public typealias SubdivisionsArmeniaLevel1 = Locale.Region.Subdivision.Level1.Armenia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.armenia, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct Armenia : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsArmeniaLevel1 { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Armenia | https://en.wikipedia.org/wiki/ISO_3166-2:AM
    static let aragatsotn = get("AG")
    static let ararat = get("AR")
    static let armavir = get("AV")
    static let gegharkunik = get("GR")
    static let kotayk = get("KT")
    static let lori = get("LO")
    static let shirak = get("SH")
    static let syunik = get("SU")
    static let tavush = get("TV")
    static let vayotsDzor = get("VD")
    static let yerevan = get("ER")
}
