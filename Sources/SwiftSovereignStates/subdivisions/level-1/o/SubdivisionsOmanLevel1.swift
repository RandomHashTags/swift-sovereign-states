//
//  SubdivisionsOmanLevel1.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public typealias SubdivisionsOmanLevel1 = Locale.Region.Subdivision.Level1.Oman

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.oman, allSameType: true, type: Locale.Region.SubdivisionType.governorate)
    struct Oman : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsOmanLevel1 { // https://en.wikipedia.org/wiki/Governorates_of_Oman | https://en.wikipedia.org/wiki/ISO_3166-2:OM
    static let interior = get("DA")
    static let dhahira = get("ZA")
    static let northBatina = get("BS")
    static let southBatina = get("BJ")
    static let buraymi = get("BU")
    static let central = get("WA")
    static let northeastern = get("SS")
    static let southeastern = get("SJ")
    static let dhofar = get("ZU")
    static let musandam = get("MU")
    static let muscat = get("MA")
}
