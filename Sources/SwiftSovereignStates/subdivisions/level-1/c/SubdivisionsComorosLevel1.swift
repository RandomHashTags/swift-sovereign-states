//
//  SubdivisionsComorosLevel1.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public typealias SubdivisionsComorosLevel1 = Locale.Region.Subdivision.Level1.Comoros

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.comoros, allSameType: true, type: Locale.Region.SubdivisionType.autonomousIsland)
    struct Comoros : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsComorosLevel1 { // https://en.wikipedia.org/wiki/Politics_of_the_Comoros#Autonomous_islands | https://en.wikipedia.org/wiki/ISO_3166-2:KM
    static let anjouan = get("A")
    static let grande_comore = get("G")
    static let moheli = get("M")
}
