//
//  SubdivisionsMalawiLevel1.swift
//
//
//  Created by Evan Anderson on 1/24/24.
//

import Foundation

public typealias SubdivisionsMalawiLevel1 = Locale.Region.Subdivision.Level1.Malawi

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.malawi, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct Malawi : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsMalawiLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Malawi | https://en.wikipedia.org/wiki/ISO_3166-2:MW
    static let northern = get("N")
    static let central = get("C")
    static let southern = get("S")
}
