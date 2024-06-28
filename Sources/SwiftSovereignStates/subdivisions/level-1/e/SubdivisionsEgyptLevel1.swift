//
//  SubdivisionsEgyptLevel1.swift
//  
//
//  Created by Evan Anderson on 7/26/22.
//

import Foundation

public typealias SubdivisionsEgyptLevel1 = Locale.Region.Subdivision.Level1.Egypt

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.egypt, allSameType: true, type: Locale.Region.SubdivisionType.governorate)
    struct Egypt : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsEgyptLevel1 { // https://en.wikipedia.org/wiki/Governorates_of_Egypt | https://en.wikipedia.org/wiki/ISO_3166-2:EG
    static let alexandria = get("ALX")
    static let aswan = get("ASN")
    static let asyut = get("AST")
    static let beheira = get("BH")
    static let beni_suef = get("BNS")
    static let cairo = get("C")
    static let dakahlia = get("DK")
    static let damietta = get("DT")
    static let faiyum = get("FYM")
    static let gharbia = get("GH")
    static let giza = get("GZ")
    static let ismailia = get("IS")
    static let kafrElSheikh = get("KFS")
    static let luxor = get("LX")
    static let matrouh = get("MT")
    static let minya = get("MN")
    static let monufia = get("MNF")
    static let newValley = get("WAD")
    static let northSinai = get("SIN")
    static let portSaid = get("PTS")
    static let qalyubia = get("KB")
    static let qena = get("KN")
    static let redSea = get("BA")
    static let sharqia = get("SHR")
    static let sohag = get("SHG")
    static let southSinai = get("JS")
    static let suez = get("SUZ")
}
