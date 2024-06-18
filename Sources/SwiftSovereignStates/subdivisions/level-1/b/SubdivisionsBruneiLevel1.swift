//
//  SubdivisionsBruneiLevel1.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation

public typealias SubdivisionsBruneiLevel1 = Locale.Region.Subdivision.Level1.Brunei

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.brunei, allSameType: true, type: Locale.Region.SubdivisionType.district)
    struct Brunei : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsBruneiLevel1 { // https://en.wikipedia.org/wiki/Districts_of_Brunei | https://en.wikipedia.org/wiki/ISO_3166-2:BN
    static let belait = get("BE")
    static let bruneiMuara = get("BM")
    static let temburong = get("TE")
    static let tutong = get("TU")
}
