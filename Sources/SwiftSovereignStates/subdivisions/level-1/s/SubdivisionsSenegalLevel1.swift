//
//  SubdivisionsSenegalLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsSenegalLevel1 = Locale.Region.Subdivision.Level1.Senegal

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.senegal, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct Senegal : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsSenegalLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Senegal | https://en.wikipedia.org/wiki/ISO_3166-2:SN
    static let dakar = get("DK")
    static let diourbel = get("DB")
    static let fatick = get("FK")
    static let kaffrine = get("KA")
    static let kaolack = get("KL")
    static let kedougou = get("KE")
    static let kolda = get("KD")
    static let louga = get("LG")
    static let matam = get("MT")
    static let saint_louis = get("SL")
    static let sedhiou = get("SE")
    static let tambacounda = get("TC")
    static let thies = get("TH")
    static let ziguinchor = get("ZG")
}
