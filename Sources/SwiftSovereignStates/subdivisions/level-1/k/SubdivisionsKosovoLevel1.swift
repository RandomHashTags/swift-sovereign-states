//
//  SubdivisionsKosovoLevel1.swift
//
//
//  Created by Evan Anderson on 1/19/24.
//

import Foundation

public typealias SubdivisionsKosovoLevel1 = Locale.Region.Subdivision.Level1.Kosovo

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.kosovo, allSameType: true, type: Locale.Region.SubdivisionType.district)
    struct Kosovo : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsKosovoLevel1 { // https://en.wikipedia.org/wiki/Districts_of_Kosovo | TODO: find ISO
    static let ferizaj = get("1")
    static let gjakova = get("2")
    static let gjilan = get("3")
    static let mitrovica = get("4")
    static let peja = get("5")
    static let pristina = get("6")
    static let prizren = get("7")
}
