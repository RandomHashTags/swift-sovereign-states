//
//  SubdivisionsMyanmarLevel1.swift
//
//
//  Created by Evan Anderson on 1/24/24.
//

import Foundation

public typealias SubdivisionsMyanmarLevel1 = Locale.Region.Subdivision.Level1.Myanmar

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.myanmar, allSameType: false, type: Locale.Region.SubdivisionType.region)
    struct Myanmar : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .chin,
                    .kachin,
                    .kayah,
                    .kayin,
                    .mon,
                    .rakhine,
                    .shan:
                return Locale.Region.SubdivisionType.state
            case .naypyidaw:
                return Locale.Region.SubdivisionType.unionTerritory
            default:
                return Locale.Region.SubdivisionType.region
            }
        }
    }
}

public extension SubdivisionsMyanmarLevel1 { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Myanmar | https://en.wikipedia.org/wiki/ISO_3166-2:MM
    static let ayeyarwady = get("07")
    static let bago = get("02")
    static let magway = get("03")
    static let mandalay = get("04")
    static let sagaing = get("01")
    static let tanintharyi = get("05")
    static let yangon = get("06")

    static let chin = get("14")
    static let kachin = get("11")
    static let kayah = get("12")
    static let kayin = get("13")
    static let mon = get("15")
    static let rakhine = get("16")
    static let shan = get("17")

    static let naypyidaw = get("18")
}
