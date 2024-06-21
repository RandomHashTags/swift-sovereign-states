//
//  SubdivisionsLiechtensteinLevel1.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public typealias SubdivisionsLiechtensteinLevel1 = Locale.Region.Subdivision.Level1.Liechtenstein

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.liechtenstein, allSameType: true, type: Locale.Region.SubdivisionType.municipality)
    struct Liechtenstein : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsLiechtensteinLevel1 { // https://en.wikipedia.org/wiki/Municipalities_of_Liechtenstein | https://en.wikipedia.org/wiki/ISO_3166-2:LI
    static let balzers = get("01")
    static let eschen = get("02")
    static let gamprin = get("03")
    static let mauren = get("04")
    static let planken = get("05")
    static let ruggell = get("06")
    static let schaan = get("07")
    static let schellenberg = get("08")
    static let triesen = get("09")
    static let triesenberg = get("10")
    static let vaduz = get("11")
}
