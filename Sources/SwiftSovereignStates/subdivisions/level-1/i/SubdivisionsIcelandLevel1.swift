//
//  SubdivisionsIcelandLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsIcelandLevel1 = Locale.Region.Subdivision.Level1.Iceland

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.iceland, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct Iceland : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsIcelandLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Iceland | https://en.wikipedia.org/wiki/ISO_3166-2:IS
    static let capital = get("1")
    static let southernPeninsula = get("2")
    static let western = get("3")
    static let westfjords = get("4")
    static let northwestern = get("5")
    static let northeastern = get("6")
    static let eastern = get("7")
    static let southern = get("8")
}