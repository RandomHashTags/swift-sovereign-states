//
//  SubdivisionsNewZealandLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsNewZealandLevel1 = Locale.Region.Subdivision.Level1.NewZealand

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.newZealand, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct NewZealand : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsNewZealandLevel1 { // https://en.wikipedia.org/wiki/Regions_of_New_Zealand | https://en.wikipedia.org/wiki/ISO_3166-2:NZ
    static let auckland = get("AUK")
    static let bay_of_plenty = get("BOP")
    static let canterbury = get("CAN")
    static let gisborne = get("GIS")
    static let hawkes_bay = get("HKB")
    static let manawatu_whanganui = get("MWT")
    static let malborough = get("MBH")
    static let nelson = get("NSN")
    static let northland = get("NTL")
    static let otago = get("OTA")
    static let southland = get("STL")
    static let taranaki = get("TKI")
    static let tasman = get("TAS")
    static let waikato = get("WKO")
    static let wellington = get("WGN")
    static let west_coast = get("WTC")
}
