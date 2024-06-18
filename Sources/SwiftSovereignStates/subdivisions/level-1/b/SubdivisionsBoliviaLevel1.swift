//
//  SubdivisionsBoliviaLevel1.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public typealias SubdivisionsBoliviaLevel1 = Locale.Region.Subdivision.Level1.Bolivia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.bolivia, allSameType: true, type: Locale.Region.SubdivisionType.department)
    struct Bolivia : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsBoliviaLevel1 { // https://en.wikipedia.org/wiki/Departments_of_Bolivia | https://en.wikipedia.org/wiki/ISO_3166-2:BO
    static let beni = get("B")
    static let chuquisaca = get("H")
    static let cochabamba = get("C")
    static let laPaz = get("L")
    static let oruro = get("O")
    static let pando = get("N")
    static let potosí = get("P")
    static let santa_cruz = get("S")
    static let tarija = get("T")
}
