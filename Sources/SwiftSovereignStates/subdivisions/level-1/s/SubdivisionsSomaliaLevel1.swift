//
//  SubdivisionsSomaliaLevel1.swift
//  
//
//  Created by Evan Anderson on 2/12/23.
//

import Foundation

public typealias SubdivisionsSomaliaLevel1 = Locale.Region.Subdivision.Level1.Somalia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.somalia, allSameType: true, type: Locale.Region.SubdivisionType.federalMemberState)
    struct Somalia : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsSomaliaLevel1 { // https://en.wikipedia.org/wiki/States_and_regions_of_Somalia | https://en.wikipedia.org/wiki/ISO_3166-2:SO
    static let galmudug = get("1")
    static let hirshabelle = get("2")
    static let jubaland = get("3")
    static let puntland = get("4")
    static let south_west = get("5")
    static let somaliland = get("6")
}
