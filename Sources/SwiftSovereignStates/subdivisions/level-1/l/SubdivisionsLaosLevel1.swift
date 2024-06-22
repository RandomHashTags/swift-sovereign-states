//
//  SubdivisionsLaosLevel1.swift
//  
//
//  Created by Evan Anderson on 9/27/22.
//

import Foundation

public typealias SubdivisionsLaosLevel1 = Locale.Region.Subdivision.Level1.Laos

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.laos, allSameType: false, type: Locale.Region.SubdivisionType.province)
    struct Laos : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .vientiane_prefecture:
                return Locale.Region.SubdivisionType.prefecture
            default:
                return Locale.Region.SubdivisionType.province
            }
        }
    }
}

public extension SubdivisionsLaosLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Laos | https://en.wikipedia.org/wiki/ISO_3166-2:LA
    static let attapeu = get("AT")
    static let bokeo = get("BK")
    static let bolikhamsai = get("BL")
    static let champasak = get("CH")
    static let houaphanh = get("HO")
    static let khammouane = get("KH")
    static let luang_namtha = get("LM")
    static let luang_prabang = get("LP")
    static let oudomxay = get("OU")
    static let phongsaly = get("PH")
    static let sainyabuli = get("XA")
    static let salavan = get("SL")
    static let savannakhet = get("SV")
    static let sekong = get("XE")
    static let vientiane = get("VI")
    static let vientiane_prefecture = get("VT")
    static let xaisomboun = get("XI")
    static let xiangkhouang = get("XS")
}
