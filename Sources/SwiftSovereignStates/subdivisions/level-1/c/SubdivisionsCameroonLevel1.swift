//
//  SubdivisionsCameroonLevel1.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public typealias SubdivisionsCameroonLevel1 = Locale.Region.Subdivision.Level1.Cameroon

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.cameroon, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct Cameroon : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsCameroonLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Cameroon | https://en.wikipedia.org/wiki/ISO_3166-2:CM
    static let adamawa = get("AD")
    static let centre = get("CE")
    static let east = get("ES")
    static let far_north = get("EN")
    static let littoral = get("LT")
    static let north = get("NO")
    static let nortwest = get("NW")
    static let south = get("SU")
    static let southwest = get("SW")
    static let west = get("OU")
}
