//
//  SubdivisionsLebanonLevel1.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public typealias SubdivisionsLebanonLevel1 = Locale.Region.Subdivision.Level1.Lebanon

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.lebanon, allSameType: true, type: Locale.Region.SubdivisionType.governorate)
    struct Lebanon : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsLebanonLevel1 { // https://en.wikipedia.org/wiki/Governorates_of_Lebanon | https://en.wikipedia.org/wiki/ISO_3166-2:LB
    static let akkar = get("AK")
    static let baalbekHermel = get("BH")
    static let beirut = get("BA")
    static let beqaa = get("BI")
    static let keserwanJbeil = get("KJ")
    static let mountLebanon = get("JL")
    static let nabatieh = get("NA")
    static let north = get("AS")
    static let south = get("JA")
}
