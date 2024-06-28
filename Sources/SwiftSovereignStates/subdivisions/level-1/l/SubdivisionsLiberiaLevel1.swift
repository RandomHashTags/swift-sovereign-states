//
//  SubdivisionsLiberiaLevel1.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public typealias SubdivisionsLiberiaLevel1 = Locale.Region.Subdivision.Level1.Liberia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.liberia, allSameType: true, type: Locale.Region.SubdivisionType.county)
    struct Liberia : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsLiberiaLevel1 { // https://en.wikipedia.org/wiki/Counties_of_Liberia | https://en.wikipedia.org/wiki/ISO_3166-2:LR
    static let bomi = get("BM")
    static let bong = get("BG")
    static let gbarpolu = get("GP")
    static let grand_bassa = get("GB")
    static let grand_cape_mount = get("CM")
    static let grand_gedeh = get("GG")
    static let grand_kru = get("GK")
    static let lofa = get("LO")
    static let margibi = get("MG")
    static let maryland = get("MY")
    static let montserrado = get("MO")
    static let nimba = get("NI")
    static let rivercess = get("RI")
    static let riverGee = get("RG")
    static let sinoe = get("SI")
}
