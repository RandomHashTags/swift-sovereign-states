//
//  SubdivisionsGambiaLevel1.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation

public typealias SubdivisionsGambiaLevel1 = Locale.Region.Subdivision.Level1.Gambia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.gambia, allSameType: false, type: Locale.Region.SubdivisionType.region)
    struct Gambia : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .banjul:
                return Locale.Region.SubdivisionType.city
            default:
                return Locale.Region.SubdivisionType.region
            }
        }
    }
}

public extension SubdivisionsGambiaLevel1 { // https://en.wikipedia.org/wiki/Subdivisions_of_the_Gambia | https://en.wikipedia.org/wiki/ISO_3166-2:GM
    static let banjul = get("B")
    static let central_river = get("M")
    static let lower_river = get("L")
    static let north_bank = get("N")
    static let upper_river = get("U")
    static let west_coast = get("W")
}
