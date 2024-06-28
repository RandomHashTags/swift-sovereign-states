//
//  SubdivisionsNamibiaLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsNamibiaLevel1 = Locale.Region.Subdivision.Level1.Namibia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.namibia, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct Namibia : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsNamibiaLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Namibia | https://en.wikipedia.org/wiki/ISO_3166-2:NA
    static let erongo = get("ER")
    static let hardap = get("HA")
    static let kavango_east = get("KE")
    static let kavango_west = get("KW")
    static let khomas = get("KH")
    static let kunene = get("KU")
    static let ohangwena = get("OW")
    static let omaheke = get("OH")
    static let omusati = get("OS")
    static let oshana = get("ON")
    static let oshikoto = get("OT")
    static let otjozondjupa = get("OD")
    static let zambezi = get("CA")
    static let karas = get("KA")
}
