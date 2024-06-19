//
//  SubdivisionsTogoLevel1.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public typealias SubdivisionsTogoLevel1 = Locale.Region.Subdivision.Level1.Togo

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.togo, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct Togo : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsTogoLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Togo | https://en.wikipedia.org/wiki/ISO_3166-2:TG
    static let centrale = get("C")
    static let kara = get("K")
    static let maritime = get("M")
    static let plateaux = get("P")
    static let savanes = get("S")
}
