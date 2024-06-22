//
//  SubdivisionsMonacoLevel1.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation

public typealias SubdivisionsMonacoLevel1 = Locale.Region.Subdivision.Level1.Monaco

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.monaco, allSameType: true, type: Locale.Region.SubdivisionType.municipality)
    struct Monaco : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsMonacoLevel1 { // https://en.wikipedia.org/wiki/Monaco#Administrative_divisions | https://en.wikipedia.org/wiki/ISO_3166-2:MC
    static let monaco = get("1")
}
