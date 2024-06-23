//
//  SubdivisionsGhanaLevel1.swift
//  
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation

public typealias SubdivisionsGhanaLevel1 = Locale.Region.Subdivision.Level1.Ghana

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.ghana, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct Ghana : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsGhanaLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Ghana | https://en.wikipedia.org/wiki/ISO_3166-2:GH
    static let ahafo = get("AF")
    static let ashanti = get("AH")
    static let bono = get("BO")
    static let bono_east = get("BE")
    static let central = get("CP")
    static let eastern = get("EP")
    static let greater_accra = get("AA")
    static let north_east = get("NE")
    static let northern = get("NP")
    static let oti = get("OT")
    static let savannah = get("SV")
    static let upper_east = get("UE")
    static let upper_west = get("UW")
    static let volta = get("TV")
    static let western = get("WP")
    static let western_north = get("WN")
}
