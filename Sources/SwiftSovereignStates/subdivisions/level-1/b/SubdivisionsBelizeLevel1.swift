//
//  SubdivisionsBelizeLevel1.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public typealias SubdivisionsBelizeLevel1 = Locale.Region.Subdivision.Level1.Belize

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.belize, allSameType: true, type: Locale.Region.SubdivisionType.district)
    struct Belize : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsBelizeLevel1 { // https://en.wikipedia.org/wiki/Districts_of_Belize | https://en.wikipedia.org/wiki/ISO_3166-2:BZ
    static let belize = get("BZ")
    static let cayo = get("CY")
    static let corozal = get("CZL")
    static let orangeWalk = get("OW")
    static let stannCreek = get("SC")
    static let toledo = get("TOL")
}
