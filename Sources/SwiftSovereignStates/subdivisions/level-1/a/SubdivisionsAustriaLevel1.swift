//
//  SubdivisionsAustriaLevel1.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public typealias SubdivisionsAustriaLevel1 = Locale.Region.Subdivision.Level1.Austria

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.austria, allSameType: true, type: Locale.Region.SubdivisionType.state)
    struct Austria : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsAustriaLevel1 { // https://en.wikipedia.org/wiki/States_of_Austria | https://en.wikipedia.org/wiki/ISO_3166-2:AT
    static let burgenland = get("1")
    static let carinthia = get("2")
    static let lowerAustria = get("3")
    static let salzburg = get("5")
    static let styria = get("6")
    static let tyrol = get("7")
    static let upperAustria = get("4")
    static let vienna = get("9")
    static let vorarlberg = get("8")
}