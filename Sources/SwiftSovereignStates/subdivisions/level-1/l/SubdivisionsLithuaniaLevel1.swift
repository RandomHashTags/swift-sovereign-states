//
//  SubdivisionsLithuaniaLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsLithuaniaLevel1 = Locale.Region.Subdivision.Level1.Lithuania

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.lithuania, allSameType: true, type: Locale.Region.SubdivisionType.county)
    struct Lithuania : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsLithuaniaLevel1 { // https://en.wikipedia.org/wiki/Counties_of_Lithuania | https://en.wikipedia.org/wiki/ISO_3166-2:LT
    static let alytus: Locale.Region.Subdivision.Level1.Lithuania = get("AL")
    static let kaunas = get("KU")
    static let klaipeda = get("KL")
    static let marijampole = get("MR")
    static let panevezys = get("PN")
    static let siauliai = get("SA")
    static let taurage = get("TA")
    static let telsiai = get("TE")
    static let utena = get("UT")
    static let vilnius = get("VL")
}
