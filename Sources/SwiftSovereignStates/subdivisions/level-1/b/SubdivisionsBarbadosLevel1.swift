//
//  SubdivisionsBarbadosLevel1.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public typealias SubdivisionsBarbadosLevel1 = Locale.Region.Subdivision.Level1.Barbados

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.barbados, allSameType: true, type: Locale.Region.SubdivisionType.parish)
    struct Barbados : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsBarbadosLevel1 { // https://en.wikipedia.org/wiki/Parishes_of_Barbados | https://en.wikipedia.org/wiki/ISO_3166-2:BB
    static let christChurch = get("01")
    static let saintAndrew = get("02")
    static let saintGeorge = get("03")
    static let saintJames = get("04")
    static let saintJohn = get("05")
    static let saintJoseph = get("06")
    static let saintLucy = get("07")
    static let saintMichael = get("08")
    static let saintPeter = get("09")
    static let saintPhilip = get("10")
    static let saintThomas = get("11")
}
