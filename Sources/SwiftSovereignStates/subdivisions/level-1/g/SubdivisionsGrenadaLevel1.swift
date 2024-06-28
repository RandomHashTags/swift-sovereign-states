//
//  SubdivisionsGrenadaLevel1.swift
//  
//
//  Created by Evan Anderson on 2/11/23.
//

import Foundation

public typealias SubdivisionsGrenadaLevel1 = Locale.Region.Subdivision.Level1.Grenada

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.grenada, allSameType: false, type: Locale.Region.SubdivisionType.parish)
    struct Grenada : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .carriacou_and_petite_martinique:
                return Locale.Region.SubdivisionType.dependency
            default:
                return Locale.Region.SubdivisionType.parish
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsGrenadaLevel1 { // https://en.wikipedia.org/wiki/Parishes_of_Grenada | https://en.wikipedia.org/wiki/ISO_3166-2:GD
    static let saint_andrew = get("01")
    static let saint_david = get("02")
    static let saint_george = get("03")
    static let saint_john = get("04")
    static let saint_mark = get("05")
    static let saint_patrick = get("06")
    
    static let carriacou_and_petite_martinique = get("10")
}
