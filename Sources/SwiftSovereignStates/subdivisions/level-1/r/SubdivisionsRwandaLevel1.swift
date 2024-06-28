//
//  SubdivisionsRwandaLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsRwandaLevel1 = Locale.Region.Subdivision.Level1.Rwanda

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.rwanda, allSameType: false, type: Locale.Region.SubdivisionType.province)
    struct Rwanda : Locale.Region.Subdivision.Level1Protocol {

        public var type: Locale.Region.SubdivisionType {
            switch self {
                case .kigali:
                    return Locale.Region.SubdivisionType.city
                default:
                    return Locale.Region.SubdivisionType.province
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsRwandaLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Rwanda | https://en.wikipedia.org/wiki/ISO_3166-2:RW
    static let eastern = get("02")
    static let kigali = get("01")
    static let northern = get("03")
    static let southern = get("05")
    static let western = get("04")
}
