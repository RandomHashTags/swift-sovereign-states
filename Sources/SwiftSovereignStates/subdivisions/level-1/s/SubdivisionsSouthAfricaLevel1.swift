//
//  SubdivisionsSouthAfricaLevel1.swift
//  
//
//  Created by Evan Anderson on 2/14/23.
//

import Foundation

public typealias SubdivisionsSouthAfricaLevel1 = Locale.Region.Subdivision.Level1.SouthAfrica

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.southAfrica, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct SouthAfrica : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsSouthAfricaLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_South_Africa | https://en.wikipedia.org/wiki/ISO_3166-2:ZA
    static let easternCape = get("EC")
    static let freeState = get("FS")
    static let gauteng = get("GP")
    static let kwazuluNatal = get("KZN")
    static let limpopo = get("LP")
    static let mpumalanga = get("MP")
    static let northWest = get("NW")
    static let northernCape = get("NC")
    static let westernCape = get("WC")
}
