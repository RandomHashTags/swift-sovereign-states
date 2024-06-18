//
//  SubdivisionsJerseyLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsJerseyLevel1 = Locale.Region.Subdivision.Level1.Jersey

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.jersey, allSameType: true, type: Locale.Region.SubdivisionType.parish)
    struct Jersey : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsJerseyLevel1 { // https://en.wikipedia.org/wiki/Parishes_of_Jersey | https://en.wikipedia.org/wiki/ISO_3166-2:JE
    static let grouville = get("01")
    static let saintLawrence = get("02")
    static let saintBrelade = get("03")
    static let saintClement = get("04")
    static let saintHelier = get("05")
    static let saintJohn = get("06")
    static let saintMartin = get("07")
    static let saintOuen = get("08")
    static let saintPeter = get("09")
    static let saintSaviour = get("10")
    static let saintMary = get("11")
    static let trinity = get("12")
}
