//
//  SubdivisionsGreeceLevel1.swift
//  
//
//  Created by Evan Anderson on 7/26/22.
//

import Foundation

public typealias SubdivisionsGreeceLevel1 = Locale.Region.Subdivision.Level1.Greece

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.greece, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct Greece : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsGreeceLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Greece | https://en.wikipedia.org/wiki/ISO_3166-2:GR
    static let attica = get("I")
    static let central_greece = get("H")
    static let central_macedonia = get("B")
    static let crete = get("M")
    static let eastern_macedonia_and_thrace = get("A")
    static let epirus = get("D")
    static let ionian_islands = get("F")
    static let mount_athos = get("69")
    static let north_aegean = get("K")
    static let peloponnese = get("J")
    static let south_aegean = get("L")
    static let thessaly = get("E")
    static let western_greece = get("G")
    static let western_macedonia = get("C")
}
