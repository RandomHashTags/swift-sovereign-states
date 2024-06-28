//
//  SubdivisionsGreenlandLevel1.swift
//  
//
//  Created by Evan Anderson on 2/11/23.
//

import Foundation

public typealias SubdivisionsGreenlandLevel1 = Locale.Region.Subdivision.Level1.Greenland

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.greenland, allSameType: true, type: Locale.Region.SubdivisionType.municipality)
    struct Greenland : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsGreenlandLevel1 { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Greenland | https://en.wikipedia.org/wiki/ISO_3166-2:GL
    static let avannaata = get("AV")
    static let kujalleq = get("KU")
    static let qeqertalik = get("QT")
    static let qeqqata = get("QE")
    static let sermersooq = get("SM")
}
