//
//  SubdivisionsMadagascarLevel1.swift
//  
//
//  Created by Evan Anderson on 7/29/22.
//

import Foundation

public typealias SubdivisionsMadagascarLevel1 = Locale.Region.Subdivision.Level1.Madagascar

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.madagascar, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct Madagascar : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsMadagascarLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Madagascar | https://en.wikipedia.org/wiki/ISO_3166-2:MG
    static let alaotra_mangoro = get("01")
    static let amoron_i_mania = get("02")
    static let analamanga = get("03")
    static let analanjirofo = get("04")
    static let androy = get("05")
    static let anosy = get("06")
    static let atsimo_andrefana = get("07")
    static let atsimo_atsinanana = get("08")
    static let atsinanana = get("09")
    static let betsiboka = get("10")
    static let boeny = get("11")
    static let bongolava = get("12")
    static let diana = get("13")
    static let ihorombe = get("14")
    static let itasy = get("15")
    static let matsiatra_ambony = get("16")
    static let melaky = get("17")
    static let menabe = get("18")
    static let sava = get("19")
    static let sofia = get("20")
    static let vakinankaratra = get("21")
    static let vatovavy = get("22")
    static let vatovavy_fitovinany = get("23")
}
