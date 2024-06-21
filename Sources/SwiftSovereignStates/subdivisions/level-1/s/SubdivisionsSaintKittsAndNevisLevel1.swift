//
//  SubdivisionsSaintKittsAndNevisLevel1.swift
//
//
//  Created by Evan Anderson on 1/24/24.
//

import Foundation

public typealias SubdivisionsSaintKittsAndNevisLevel1 = Locale.Region.Subdivision.Level1.SaintKittsAndNevis

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.saintKittsNevis, allSameType: true, type: Locale.Region.SubdivisionType.parish)
    struct SaintKittsAndNevis : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsSaintKittsAndNevisLevel1 { // https://en.wikipedia.org/wiki/Saint_Kitts_and_Nevis#Administrative_divisions | https://en.wikipedia.org/wiki/ISO_3166-2:KN
    static let christChurchNicholaTown = get("01")
    static let saintAnneSandyPoint = get("02")
    static let saintGeorgeBasseterre = get("03")
    static let saintGeorgeGingerland = get("04")
    static let saintJamesWindward = get("05")
    static let saintJohnCapisterre = get("06")
    static let saintJohnFigtree = get("07")
    static let saintMaryCayon = get("08")
    static let saintPaulCapisterre = get("09")
    static let saintPaulCharlestown = get("10")
    static let saintPeter_basseterre = get("11")
    static let saint_thomas_lowland = get("12")
    static let saint_thomas_middle_island = get("13")
    static let trinityPalmettoPoint = get("15")
}
