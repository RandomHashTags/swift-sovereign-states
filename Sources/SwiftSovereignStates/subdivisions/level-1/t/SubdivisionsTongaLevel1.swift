//
//  SubdivisionsTongaLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsTongaLevel1 = Locale.Region.Subdivision.Level1.Tonga

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.tonga, allSameType: true, type: Locale.Region.SubdivisionType.district)
    struct Tonga : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsTongaLevel1 { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Tonga | https://en.wikipedia.org/wiki/ISO_3166-2:TO
    static let eua = get("01")
    static let haapai = get("02")
    static let niua = get("03")
    static let tongatapu = get("04")
    static let vavau = get("05")
}
