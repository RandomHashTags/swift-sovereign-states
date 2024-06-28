//
//  SubdivisionsPolandLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsPolandLevel1 = Locale.Region.Subdivision.Level1.Poland

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.poland, allSameType: true, type: Locale.Region.SubdivisionType.voivodeship)
    struct Poland : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsPolandLevel1 { // https://en.wikipedia.org/wiki/Voivodeships_of_Poland | https://en.wikipedia.org/wiki/ISO_3166-2:PL
    static let greaterPoland = get("30")
    static let holyCross = get("26")
    static let kuyaviaPomerania = get("04")
    static let lesserPoland = get("12")
    static let lodz = get("10")
    static let lowerSilesia = get("02")
    static let lublin = get("06")
    static let lubusz = get("08")
    static let masovia = get("14")
    static let opole = get("16")
    static let podlaskie = get("20")
    static let pomerania = get("22")
    static let silesia = get("24")
    static let subcarpathia = get("18")
    static let warmiaMasuria = get("28")
    static let westPomerania = get("32")
}
