//
//  SubdivisionsGuatemalaLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsGuatemalaLevel1 = Locale.Region.Subdivision.Level1.Guatemala

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.guatemala, allSameType: true, type: Locale.Region.SubdivisionType.department)
    struct Guatemala : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsGuatemalaLevel1 { // https://en.wikipedia.org/wiki/Departments_of_Guatemala | https://en.wikipedia.org/wiki/ISO_3166-2:GT
    static let alta_verapaz = get("16")
    static let baja_verapaz = get("15")
    static let chimaltenango = get("04")
    static let chiquimula = get("20")
    static let el_progreso = get("02")
    static let escuintla = get("05")
    static let guatemala = get("01")
    static let huehuetenango = get("13")
    static let izabal = get("18")
    static let jalapa = get("21")
    static let peten = get("17")
    static let quetzaltenango = get("09")
    static let quiche = get("14")
    static let retalhuleu = get("11")
    static let sacatepequez = get("03")
    static let san_marcos = get("12")
    static let santa_rosa = get("06")
    static let solola = get("07")
    static let suchitepequez = get("10")
    static let totonicapan = get("08")
    static let zacapa = get("19")
}
