//
//  SubdivisionsNauruLevel1.swift
//  
//
//  Created by Evan Anderson on 2/14/23.
//

import Foundation

public typealias SubdivisionsNauruLevel1 = Locale.Region.Subdivision.Level1.Nauru

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.nauru, allSameType: true, type: Locale.Region.SubdivisionType.district)
    struct Nauru : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsNauruLevel1 { // https://en.wikipedia.org/wiki/List_of_settlements_in_Nauru | https://en.wikipedia.org/wiki/ISO_3166-2:NR
    static let aiwo = get("01")
    static let anabar = get("02")
    static let anetan = get("03")
    static let anibare = get("04")
    static let baiti = get("05")
    static let boe = get("06")
    static let buada = get("07")
    static let denigomodu = get("08")
    static let ewa = get("09")
    static let ljuw = get("10")
    static let meneng = get("11")
    static let nibok = get("12")
    static let uaboe = get("13")
    static let yaren = get("14")
}
