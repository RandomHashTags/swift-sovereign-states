//
//  SubdivisionsFranceLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsFranceLevel1 = Locale.Region.Subdivision.Level1.France

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.france, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct France : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsFranceLevel1 { // https://en.wikipedia.org/wiki/Regions_of_France | https://en.wikipedia.org/wiki/ISO_3166-2:FR
    static let auvergneRhoneAlpes = get("ARA")
    static let burgundyFreeCounty = get("BFC")
    static let brittany = get("BRE")
    static let centreLoireValley = get("CVL")
    static let corsica = get("20R")
    static let greatEast = get("GES")
    static let upperFrance = get("HDF")
    static let paris = get("IDF")
    static let normandy = get("NOR")
    static let newAquitaine = get("NAQ")
    static let occitania = get("OCC")
    static let loireCountry = get("PDL")
    static let provenceAlpsFrenchRiviera = get("PAC")
}
