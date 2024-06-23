//
//  SubdivisionsGermanyLevel1.swift
//  
//
//  Created by Evan Anderson on 7/26/22.
//

import Foundation

public typealias SubdivisionsGermanyLevel1 = Locale.Region.Subdivision.Level1.Germany

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.germany, allSameType: true, type: Locale.Region.SubdivisionType.state)
    struct Germany : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsGermanyLevel1 { // https://en.wikipedia.org/wiki/States_of_Germany | https://en.wikipedia.org/wiki/ISO_3166-2:DE
    static let baden_wurttemberg = get("BW")
    static let bavaria = get("BY")
    static let berlin = get("BE")
    static let brandenburg = get("BB")
    static let bremen = get("HB")
    static let hamburg = get("HH")
    static let hesse = get("HE")
    static let lower_saxony = get("NI")
    static let mecklenburg_western_pomerania = get("MV")
    static let north_rhine_westphalia = get("NW")
    static let rhineland_palatinate = get("RP")
    static let saarland = get("SL")
    static let saxony = get("SN")
    static let saxony_anhalt = get("ST")
    static let schleswig_holstein = get("SH")
    static let thuringia = get("TH")
}
