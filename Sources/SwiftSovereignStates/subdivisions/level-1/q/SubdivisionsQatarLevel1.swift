//
//  SubdivisionsQatarLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsQatarLevel1 = Locale.Region.Subdivision.Level1.Qatar

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.qatar, allSameType: true, type: Locale.Region.SubdivisionType.municipality)
    struct Qatar : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsQatarLevel1 { // https://en.wikipedia.org/wiki/Municipalities_of_Qatar
    static let doha = get("DA")
    static let daayen = get("ZA")
    static let khor = get("KH")
    static let rayyan = get("RA")
    static let north = get("MS")
    static let wakra = get("WA")
    static let shahaniya = get("SH")
    static let ummSalal = get("US")
}
