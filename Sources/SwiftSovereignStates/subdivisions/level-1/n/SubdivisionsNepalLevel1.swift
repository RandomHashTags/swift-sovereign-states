//
//  SubdivisionsNepalLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsNepalLevel1 = Locale.Region.Subdivision.Level1.Nepal

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.nepal, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct Nepal : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsNepalLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Nepal
    static let bagmati = get("P3")
    static let gandaki = get("P4")
    static let karnali = get("P6")
    static let lumbini = get("P5")
    static let madhesh = get("P2")
    static let koshi = get("P1")
    static let sudurpashchim = get("P7")
}
