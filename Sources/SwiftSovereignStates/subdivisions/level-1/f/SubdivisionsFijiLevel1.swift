//
//  SubdivisionsFijiLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsFijiLevel1 = Locale.Region.Subdivision.Level1.Fiji

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.fiji, allSameType: false, type: Locale.Region.SubdivisionType.division)
    struct Fiji : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .rotuma:
                return Locale.Region.SubdivisionType.dependency
            default:
                return Locale.Region.SubdivisionType.division
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsFijiLevel1 { // https://en.wikipedia.org/wiki/Local_government_in_Fiji | https://en.wikipedia.org/wiki/ISO_3166-2:FJ
    static let central = get("C")
    static let eastern = get("E")
    static let northern = get("N")
    static let western = get("W")
    static let rotuma = get("R")
}