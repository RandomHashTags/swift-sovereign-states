//
//  SubdivisionsAngolaLevel1.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public typealias SubdivisionsAngolaLevel1 = Locale.Region.Subdivision.Level1.Angola

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.angola, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct Angola : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsAngolaLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Angola
    static let bengo = get("01")
    static let benguela = get("02")
    static let bie = get("03")
    static let cabinda = get("04")
    static let cuando_cubango = get("05")
    static let cuanza_norte = get("06")
    static let cuanza_sul = get("07")
    static let cunene = get("08")
    static let huambo = get("09")
    static let huila = get("10")
    static let luanda = get("11")
    static let lunda_norte = get("12")
    static let lunda_sul = get("13")
    static let malanje = get("14")
    static let moxico = get("15")
    static let namibe = get("16")
    static let uige = get("17")
    static let zaire = get("18")
}
