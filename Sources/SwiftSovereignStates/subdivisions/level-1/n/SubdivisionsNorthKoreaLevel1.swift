//
//  SubdivisionsNorthKoreaLevel1.swift
//
//
//  Created by Evan Anderson on 1/24/24.
//

import Foundation

public typealias SubdivisionsNorthKoreaLevel1 = Locale.Region.Subdivision.Level1.NorthKorea

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.northKorea, allSameType: false, type: Locale.Region.SubdivisionType.province)
    struct NorthKorea : Locale.Region.Subdivision.Level1Protocol {

        public var type: Locale.Region.SubdivisionType {
            switch self {
                case .kaesong, .nampo:
                    return Locale.Region.SubdivisionType.metropolitanCity
                case .pyongyang:
                    return Locale.Region.SubdivisionType.capitalCity
                case .rason:
                    return Locale.Region.SubdivisionType.specialCity
                default:
                    return Locale.Region.SubdivisionType.province
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsNorthKoreaLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_North_Korea | https://en.wikipedia.org/wiki/ISO_3166-2:KP
    static let chagang = get("04")
    static let kangwon = get("07")
    static let north_hamgyong = get("09")
    static let north_hwanghae = get("06")
    static let north_pyongan = get("03")
    static let ryanggang = get("10")
    static let south_hamgyong = get("05")
    static let south_hwanghae = get("05")
    static let south_pyongan = get("02")

    static let kaesong = get("15")
    static let nampo = get("14")

    static let pyongyang = get("01")

    static let rason = get("13")
}
