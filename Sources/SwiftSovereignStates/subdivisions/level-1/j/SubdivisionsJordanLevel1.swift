//
//  SubdivisionsJordanLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsJordanLevel1 = Locale.Region.Subdivision.Level1.Jordan

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.jordan, allSameType: true, type: Locale.Region.SubdivisionType.governorate)
    struct Jordan : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsJordanLevel1 { // https://en.wikipedia.org/wiki/Governorates_of_Jordan | https://en.wikipedia.org/wiki/ISO_3166-2:JO
    static let ajloun: Locale.Region.Subdivision.Level1.Jordan = get("AJ")
    static let amman = get("AM")
    static let aqaba = get("AQ")
    static let balqa = get("BA")
    static let irbid = get("IR")
    static let jerash = get("JA")
    static let karak = get("KA")
    static let maan = get("MN")
    static let madaba = get("MD")
    static let mafraq = get("MA")
    static let tafilah = get("AT")
    static let zarqa = get("AZ")
}
