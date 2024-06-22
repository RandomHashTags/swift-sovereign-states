//
//  SubdivisionsCambodiaLevel1.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public typealias SubdivisionsCambodiaLevel1 = Locale.Region.Subdivision.Level1.Cambodia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.cambodia, allSameType: false, type: Locale.Region.SubdivisionType.province)
    struct Cambodia : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .phnom_penh:
                return Locale.Region.SubdivisionType.autonomousMunicipality
            default:
                return Locale.Region.SubdivisionType.province
            }
        }
    }
}

public extension SubdivisionsCambodiaLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Cambodia | https://en.wikipedia.org/wiki/ISO_3166-2:KH
    static let banteay_meanchey = get("1")
    static let battambang = get("2")
    static let kampong_cham = get("3")
    static let kampong_chhnang = get("4")
    static let kampong_speu = get("5")
    static let kampong_thom = get("6")
    static let kampot = get("7")
    static let kandal = get("8")
    static let kep = get("23")
    static let koh_kong = get("9")
    static let kratie = get("10")
    static let mondulkiri = get("11")
    static let oddar_meanchey = get("22")
    static let pailin = get("24")
    static let phnom_penh = get("12")
    static let preah_sihanouk = get("18")
    static let preah_vihear = get("13")
    static let prey_veng = get("14")
    static let pursat = get("15")
    static let ratanakiri = get("16")
    static let siem_reap = get("17")
    static let stung_treng = get("19")
    static let svay_rieng = get("20")
    static let takeo = get("21")
    static let tboung_khmum = get("25")
}
