//
//  SubdivisionsBahrainLevel1.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public typealias SubdivisionsBahrainLevel1 = Locale.Region.Subdivision.Level1.Bahrain

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.bahrain, allSameType: true, type: Locale.Region.SubdivisionType.governorate)
    struct Bahrain : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsBahrainLevel1 { // https://en.wikipedia.org/wiki/Governorates_of_Bahrain | https://en.wikipedia.org/wiki/ISO_3166-2:BH
    static let capital = get("13")
    static let muharraq = get("15")
    static let northern = get("17")
    static let southern = get("14")
}
