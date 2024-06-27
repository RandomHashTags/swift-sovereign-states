//
//  SubdivisionsCroatiaLevel1.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation

public typealias SubdivisionsCroatiaLevel1 = Locale.Region.Subdivision.Level1.Croatia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.croatia, allSameType: false, type: Locale.Region.SubdivisionType.county)
    struct Croatia : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .zagreb_city:
                return Locale.Region.SubdivisionType.city
            default:
                return Locale.Region.SubdivisionType.county
            }
        }
    }
}

public extension SubdivisionsCroatiaLevel1 { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Croatia | https://en.wikipedia.org/wiki/ISO_3166-2:HR
    static let bjelovar_bilogora = get("07")
    static let brod_posavina = get("12")
    static let dubrovnik_neretva = get("19")
    static let istria = get("18")
    static let karlovac = get("04")
    static let koprivnica_krizevci = get("06")
    static let krapina_zagorje = get("02")
    static let lika_senj = get("09")
    static let medimurje = get("20")
    static let osijek_baranja = get("14")
    static let pozega_slavonia = get("11")
    static let primorje_gorski_kotar = get("08")
    static let sibenik_knin = get("15")
    static let sisak_moslavina = get("03")
    static let split_dalmatia = get("17")
    static let varazdin = get("05")
    static let virovitica_podravina = get("10")
    static let vikovar_syrmia = get("16")
    static let zadar = get("13")
    static let zagreb = get("01")

    static let zagreb_city = get("21")
}
