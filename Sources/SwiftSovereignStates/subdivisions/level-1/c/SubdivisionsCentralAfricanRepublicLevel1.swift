//
//  SubdivisionsCentralAfricanRepublicLevel1.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public typealias SubdivisionsCentralAfricanRepublicLevel1 = Locale.Region.Subdivision.Level1.CentralAfricanRepublic

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.angola, allSameType: false, type: Locale.Region.SubdivisionType.prefecture)
    struct CentralAfricanRepublic : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .bangui:
                return Locale.Region.SubdivisionType.city
            default:
                return Locale.Region.SubdivisionType.prefecture
            }
        }
    }
}

public extension SubdivisionsCentralAfricanRepublicLevel1 { // https://en.wikipedia.org/wiki/Prefectures_of_the_Central_African_Republic | https://en.wikipedia.org/wiki/ISO_3166-2:CF
    static let bamingui_bangoran = get("BB")
    static let basse_kotto = get("BK")
    static let haut_mbomou = get("HM")
    static let haute_kotto = get("HK")
    static let kemo = get("KG")
    static let lobaye = get("LB")
    static let mambere_kadei = get("HS")
    static let mbomou = get("MB")
    static let nana_mambere = get("NM")
    static let ombella_m_poko = get("MP")
    static let ouaka = get("UK")
    static let ouham = get("AC")
    static let ouham_pende = get("OP")
    static let vakaga = get("VK")
    
    static let bangui = get("BGF")

    static let nana_grebizi = get("KB")
    static let sangha_mbaere = get("SE")
}
