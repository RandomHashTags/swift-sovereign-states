//
//  SubdivisionsSurinameLevel1.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public typealias SubdivisionsSurinameLevel1 = Locale.Region.Subdivision.Level1.Suriname

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.suriname, allSameType: true, type: Locale.Region.SubdivisionType.district)
    struct Suriname : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsSurinameLevel1 { // https://en.wikipedia.org/wiki/Districts_of_Suriname | https://en.wikipedia.org/wiki/ISO_3166-2:SR
    static let brokopondo = get("BR")
    static let commewijne = get("CM")
    static let coronie = get("CR")
    static let marowijne = get("MA")
    static let nickerie = get("NI")
    static let para = get("PR")
    static let paramaribo = get("PM")
    static let saramacca = get("SA")
    static let sipaliwini = get("SI")
    static let wanica = get("WA")
}
