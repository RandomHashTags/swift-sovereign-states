//
//  SubdivisionsAnguillaLevel1.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation

public typealias SubdivisionsAnguillaLevel1 = Locale.Region.Subdivision.Level1.Anguilla

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.anguilla, allSameType: true, type: Locale.Region.SubdivisionType.district)
    struct Anguilla : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsAnguillaLevel1 { // https://en.wikipedia.org/wiki/Geography_of_Anguilla#Districts | https://en.wikipedia.org/wiki/ISO_3166-2:AI
    static let blowing_point = get("01")
    static let east_end = get("02")
    static let george_hill = get("03")
    static let island_harbour = get("04")
    static let north_hill = get("05")
    static let north_side = get("06")
    static let sandy_ground = get("07")
    static let sandy_hill = get("08")
    static let south_hill = get("09")
    static let stoney_ground = get("10")
    static let the_farrington = get("11")
    static let the_quarter = get("12")
    static let the_valley = get("13")
    static let west_end = get("14")
}
