//
//  SubdivisionsLibyaLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsLibyaLevel1 = Locale.Region.Subdivision.Level1.Libya

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.libya, allSameType: true, type: Locale.Region.SubdivisionType.district)
    struct Libya : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsLibyaLevel1 { // https://en.wikipedia.org/wiki/Districts_of_Libya | https://en.wikipedia.org/wiki/ISO_3166-2:LY
    static let butnan = get("BU")
    static let jabal_al_akhdar = get("JA")
    static let jabal_al_gharbi = get("JG")
    static let jafara = get("JI")
    static let jufra = get("JU")
    static let kufra = get("KF")
    static let marj = get("MJ")
    static let al_wahat = get("WA")
    static let nuqat_al_khams = get("NQ")
    static let zawiya = get("ZA")
    static let benghazi = get("BA")
    static let darnah = get("DR")
    static let ghat = get("GT")
    static let murqub = get("MB")
    static let misrata = get("MI")
    static let murzuq = get("MQ")
    static let nalut = get("NL")
    static let sabha = get("SB")
    static let sirte = get("SR")
    static let tripoli = get("TB")
    static let wadi_al_hayaa = get("WD")
    static let wadi_al_shatii = get("WS")
}
