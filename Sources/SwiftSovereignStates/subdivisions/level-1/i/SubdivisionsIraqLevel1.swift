//
//  SubdivisionsIraqLevel1.swift
//  
//
//  Created by Evan Anderson on 9/27/22.
//

import Foundation

public typealias SubdivisionsIraqLevel1 = Locale.Region.Subdivision.Level1.Iraq

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.iraq, allSameType: true, type: Locale.Region.SubdivisionType.governorate)
    struct Iraq : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsIraqLevel1 { // https://en.wikipedia.org/wiki/Governorates_of_Iraq | https://en.wikipedia.org/wiki/ISO_3166-2:IQ
    static let al_anbar = get("AN")
    static let al_qadisiyyah = get("QA")
    static let babil = get("BB")
    static let baghdad = get("BG")
    static let basra = get("BA")
    static let dhi_qar = get("DQ")
    static let diyala = get("DI")
    static let duhok = get("DA")
    static let erbil = get("AR")
    static let karbala = get("KA")
    static let kirkuk = get("KI")
    static let maysan = get("MA")
    static let muthanna = get("MU")
    static let najaf = get("NA")
    static let nineveh = get("NI")
    static let saladin = get("SD")
    static let sulaymaniyah = get("SU")
    static let wasit = get("WA")
}
