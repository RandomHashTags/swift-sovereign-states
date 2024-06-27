//
//  SubdivisionsMauritaniaLevel1.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public typealias SubdivisionsMauritaniaLevel1 = Locale.Region.Subdivision.Level1.Mauritania

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.mauritania, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct Mauritania : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsMauritaniaLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Mauritania | https://en.wikipedia.org/wiki/ISO_3166-2:MR
    static let adrar = get("07")
    static let assaba = get("03")
    static let brakna = get("05")
    static let dakhlet_nouadhibou = get("08")
    static let gorgol = get("04")
    static let guidimaka = get("10")
    static let hodh_ech_chargui = get("01")
    static let hodh_el_gharbi = get("02")
    static let inchiri = get("12")
    static let nouakchott_nord = get("14")
    static let nouakchott_ouest = get("13")
    static let nouakchott_sud = get("15")
    static let tagant = get("09")
    static let tiris_zemmour = get("11")
    static let trarza = get("06")
}
