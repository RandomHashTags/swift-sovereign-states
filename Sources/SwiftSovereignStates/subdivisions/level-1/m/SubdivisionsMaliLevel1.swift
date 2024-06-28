//
//  SubdivisionsMaliLevel1.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public typealias SubdivisionsMaliLevel1 = Locale.Region.Subdivision.Level1.Mali

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.mali, allSameType: false, type: Locale.Region.SubdivisionType.region)
    struct Mali : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .bamako:
                return Locale.Region.SubdivisionType.city
            default:
                return Locale.Region.SubdivisionType.region
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsMaliLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Mali | https://en.wikipedia.org/wiki/ISO_3166-2:ML
    static let gao = get("7")
    static let kayes = get("1")
    static let kidal = get("8")
    static let koulikoro = get("2")
    static let menaka = get("9")
    static let mopti = get("5")
    static let segou = get("4")
    static let sikasso = get("3")
    static let taoudenit = get("10")
    static let tombouctou = get("6")
    
    static let bamako = get("BKO")
}
