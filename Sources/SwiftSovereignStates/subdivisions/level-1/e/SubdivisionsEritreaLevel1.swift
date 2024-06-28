//
//  SubdivisionsEritreaLevel1.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public typealias SubdivisionsEritreaLevel1 = Locale.Region.Subdivision.Level1.Eritrea

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.eritrea, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct Eritrea : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsEritreaLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Eritrea | https://en.wikipedia.org/wiki/ISO_3166-2:ER
    static let anseba = get("AN")
    static let central = get("MA")
    static let gashBarka = get("GB")
    static let northernRedSea = get("SK")
    static let southern = get("DU")
    static let southernRedSea = get("DK")
}
