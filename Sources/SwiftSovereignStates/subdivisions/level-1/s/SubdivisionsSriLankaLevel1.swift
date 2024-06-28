//
//  SubdivisionsSriLankaLevel1.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public typealias SubdivisionsSriLankaLevel1 = Locale.Region.Subdivision.Level1.SriLanka

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.sriLanka, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct SriLanka : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsSriLankaLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Sri_Lanka | https://en.wikipedia.org/wiki/ISO_3166-2:LK
    static let central = get("2")
    static let eastern = get("5")
    static let north_central = get("7")
    static let north_western = get("6")
    static let northern = get("4")
    static let sabaragamuwa = get("9")
    static let southern = get("3")
    static let uva = get("8")
    static let western = get("1")
}
