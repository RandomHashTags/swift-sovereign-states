//
//  SubdivisionsIrelandLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsIrelandLevel1 = Locale.Region.Subdivision.Level1.Ireland

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.ireland, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct Ireland : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsIrelandLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Ireland | https://en.wikipedia.org/wiki/ISO_3166-2:IE
    static let connacht = get("C")
    static let leinster = get("L")
    static let munster = get("M")
    static let ulster = get("U")
}
