//
//  SubdivisionsAbkhaziaLevel1.swift
//
//
//  Created by Evan Anderson on 1/24/24.
//

import Foundation

public typealias SubdivisionsAbkhaziaLevel1 = Locale.Region.Subdivision.Level1.Abkhazia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.abkhazia, allSameType: true, type: Locale.Region.SubdivisionType.district)
    struct Abkhazia : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsAbkhaziaLevel1 { // https://en.wikipedia.org/wiki/Districts_of_Abkhazia
    static let gagra = get("1")
    static let gali = get("2")
    static let gudauta = get("3")
    static let gulripshi = get("4")
    static let ochamchira = get("5")
    static let sukhumi = get("6")
    static let tkvarcheli = get("7")
}
