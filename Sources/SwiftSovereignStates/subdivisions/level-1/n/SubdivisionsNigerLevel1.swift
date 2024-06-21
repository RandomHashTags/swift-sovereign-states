//
//  SubdivisionsNigerLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsNigerLevel1 = Locale.Region.Subdivision.Level1.Niger

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.niger, allSameType: false, type: Locale.Region.SubdivisionType.region)
    struct Niger : Locale.Region.Subdivision.Level1Protocol {

        public var type: Locale.Region.SubdivisionType {
            switch self {
                case .niamey:
                    return Locale.Region.SubdivisionType.capitalDistrict
                default:
                    return Locale.Region.SubdivisionType.region
            }
        }
    }
}

public extension SubdivisionsNigerLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Niger | https://en.wikipedia.org/wiki/ISO_3166-2:NE
    static let agadez = get("1")
    static let diffa = get("2")
    static let dosso = get("3")
    static let maradi = get("4")
    static let niamey = get("8")
    static let tahoua = get("5")
    static let tillaberi = get("6")
    static let zinder = get("7")
}
