//
//  SubdivisionsBeninLevel1.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public typealias SubdivisionsBeninLevel1 = Locale.Region.Subdivision.Level1.Benin

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.benin, allSameType: true, type: Locale.Region.SubdivisionType.department)
    struct Benin : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsBeninLevel1 { // https://en.wikipedia.org/wiki/Departments_of_Benin | https://en.wikipedia.org/wiki/ISO_3166-2:BJ
    static let alibori = get("AL")
    static let atakora = get("AK")
    static let atlantique = get("AQ")
    static let borgou = get("BO")
    static let collines = get("CO")
    static let donga = get("DO")
    static let kouffo = get("KO")
    static let littoral = get("LI")
    static let mono = get("MO")
    static let ouémé = get("OU")
    static let plateau = get("PL")
    static let zou = get("ZO")
}
