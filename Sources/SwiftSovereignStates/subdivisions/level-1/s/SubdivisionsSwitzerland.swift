//
//  SubdivisionsSwitzerland.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsSwitzerlandLevel1 = Locale.Region.Subdivision.Level1.Switzerland

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.switzerland, allSameType: true, type: Locale.Region.SubdivisionType.canton)
    struct Switzerland : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsSwitzerlandLevel1 { // https://en.wikipedia.org/wiki/Cantons_of_Switzerland | https://en.wikipedia.org/wiki/ISO_3166-2:CH
    static let aargau = get("AG")
    static let appenzell_ausserrhoden = get("AR")
    static let appenzell_innerrhoden = get("AI")
    static let basel_landschaft = get("BL")
    static let basel_stadt = get("BS")
    static let bern = get("BE")
    static let fribourg = get("FR")
    static let geneva = get("GE")
    static let glarus = get("GL")
    static let grisons = get("GR")
    static let jura = get("JU")
    static let lucerne = get("LU")
    static let neuchatel = get("NE")
    static let nidwalden = get("NW")
    static let obwalden = get("OW")
    static let schaffhausen = get("SH")
    static let schwyz = get("SZ")
    static let solothurn = get("SO")
    static let st_gallen = get("SG")
    static let thurgau = get("TG")
    static let ticino = get("TI")
    static let uri = get("UR")
    static let valais = get("VS")
    static let vaud = get("VD")
    static let zug = get("ZG")
    static let zurich = get("ZH")
}
