//
//  SubdivisionsSlovakiaLevel1.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public typealias SubdivisionsSlovakiaLevel1 = Locale.Region.Subdivision.Level1.Slovakia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.slovakia, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct Slovakia : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsSlovakiaLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Slovakia | https://en.wikipedia.org/wiki/ISO_3166-2:SK
    static let banskaBystrica = get("BC")
    static let bratislava = get("BL")
    static let kosice = get("KI")
    static let nitra = get("NI")
    static let presov = get("PV")
    static let trencin = get("TC")
    static let trnava = get("TA")
    static let zilina = get("Zi")
}
