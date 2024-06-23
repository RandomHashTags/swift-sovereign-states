//
//  SubdivisionsIranLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsIranLevel1 = Locale.Region.Subdivision.Level1.Iran

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.iran, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct Iran : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsIranLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Iran | https://en.wikipedia.org/wiki/ISO_3166-2:IR
    static let alborz = get("30")
    static let ardabil = get("24")
    static let east_azerbaijan = get("03")
    static let west_azerbaijan = get("04")
    static let bushehr = get("18")
    static let chaharmahal_and_bakhtiari = get("14")
    static let fars = get("07")
    static let gilan = get("01")
    static let golestan = get("27")
    static let hamadan = get("13")
    static let hormozgan = get("22")
    static let ilam = get("16")
    static let isfahan = get("10")
    static let kerman = get("08")
    static let kermanshah = get("05")
    static let north_khorasan = get("28")
    static let razavi_khorasan = get("09")
    static let south_khorasan = get("29")
    static let khuzestan = get("06")
    static let kohgiluyeh_and_boyer_ahmad = get("17")
    static let kurdistan = get("12")
    static let lorestan = get("15")
    static let markazi = get("00")
    static let mazandaran = get("02")
    static let qazvin = get("26")
    static let qom = get("25")
    static let semnan = get("20")
    static let sistan_and_baluchestan = get("11")
    static let tehran = get("23")
    static let yazd = get("21")
    static let zanjan = get("19")
}
