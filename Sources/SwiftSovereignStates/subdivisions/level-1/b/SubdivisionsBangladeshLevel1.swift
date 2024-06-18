//
//  SubdivisionsBangladeshLevel1.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public typealias SubdivisionsBangladeshLevel1 = Locale.Region.Subdivision.Level1.Bangladesh

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.bangladesh, allSameType: true, type: Locale.Region.SubdivisionType.division)
    struct Bangladesh : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsBangladeshLevel1 { // https://en.wikipedia.org/wiki/Divisions_of_Bangladesh | https://en.wikipedia.org/wiki/ISO_3166-2:BD
    static let barishal = get("A")
    static let chattogram = get("B")
    static let dhaka = get("C")
    static let khulna = get("D")
    static let mymensingh = get("H")
    static let rajshahi = get("E")
    static let rangpur = get("F")
    static let sylhet = get("G")
}
