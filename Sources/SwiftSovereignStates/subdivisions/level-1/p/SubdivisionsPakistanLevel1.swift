//
//  SubdivisionsPakistanLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsPakistanLevel1 = Locale.Region.Subdivision.Level1.Pakistan

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.pakistan, allSameType: false, type: Locale.Region.SubdivisionType.province)
    struct Pakistan : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .islamabad:
                return Locale.Region.SubdivisionType.federalTerritory
            default:
                return Locale.Region.SubdivisionType.province
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsPakistanLevel1 { // https://en.wikipedia.org/wiki/Administrative_units_of_Pakistan | https://en.wikipedia.org/wiki/ISO_3166-2:PK
    static let azadJammuKashmir = get("JK")
    static let balochistan = get("BA")
    static let gilgitBaltistan = get("GB")
    static let islamabad = get("IS")
    static let khyber_pakhtunkhwa = get("KP")
    static let punjab = get("PB")
    static let sindh = get("SD")
}
