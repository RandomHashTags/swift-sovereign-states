//
//  SubdivisionsMontenegroLevel1.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public typealias SubdivisionsMontenegroLevel1 = Locale.Region.Subdivision.Level1.Montenegro

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.montenegro, allSameType: true, type: Locale.Region.SubdivisionType.municipality)
    struct Montenegro : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsMontenegroLevel1 { // https://en.wikipedia.org/wiki/Municipalities_of_Montenegro | https://en.wikipedia.org/wiki/ISO_3166-2:ME
    static let andrijevica = get("01")
    static let bar = get("02")
    static let berane = get("03")
    static let bijelo_polje = get("04")
    static let budva = get("05")
    static let danilovgrad = get("07")
    static let gusinje = get("22")
    static let herceg_novi = get("08")
    static let kolasin = get("09")
    static let kotor = get("10")
    static let mojkovac = get("11")
    static let niksic = get("12")
    static let old_royal_capital_cetinje = get("06")
    static let petnjica = get("23")
    static let plav = get("13")
    static let pljevlja = get("14")
    static let pluzine = get("15")
    static let podgorica_capital_city = get("16")
    static let rozaje = get("17")
    static let savnik = get("18")
    static let tivat = get("19")
    static let tuzi = get("24")
    static let ulcinj = get("20")
    static let zabljak = get("21")
    static let zeta = get("25")
}
