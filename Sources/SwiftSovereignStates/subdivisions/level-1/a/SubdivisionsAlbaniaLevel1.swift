//
//  SubdivisionsAlbaniaLevel1.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public typealias SubdivisionsAlbaniaLevel1 = Locale.Region.Subdivision.Level1.Albania

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.albania, allSameType: true, type: Locale.Region.SubdivisionType.county)
    struct Albania : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsAlbaniaLevel1 { // https://en.wikipedia.org/wiki/Counties_of_Albania
    static let berat = get("01")
    static let diber = get("02")
    static let durres = get("03")
    static let elbasan = get("04")
    static let fier = get("05")
    static let gjirokaster = get("06")
    static let korce = get("07")
    static let kukes = get("08")
    static let lezhe = get("09")
    static let shkoder = get("10")
    static let tirana = get("11")
    static let vloreeign = get("12")
}
