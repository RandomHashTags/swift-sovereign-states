//
//  SubdivisionsSwedenLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsSwedenLevel1 = Locale.Region.Subdivision.Level1.Sweden

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.sweden, allSameType: true, type: Locale.Region.SubdivisionType.county)
    struct Sweden : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsSwedenLevel1 { // https://en.wikipedia.org/wiki/Counties_of_Sweden | https://en.wikipedia.org/wiki/ISO_3166-2:SE
    static let blekinge = get("K")
    static let dalarna = get("W")
    static let gotland = get("I")
    static let gavleborg = get("X")
    static let halland = get("N")
    static let jamtland = get("Z")
    static let jonkoping = get("F")
    static let kalmar = get("H")
    static let kronoberg = get("G")
    static let norrbotten = get("BD")
    static let skane = get("M")
    static let stockholm = get("AB")
    static let sodermanland = get("D")
    static let uppsala = get("C")
    static let varmland = get("S")
    static let vasterbotten = get("AC")
    static let vasternorrland = get("Y")
    static let vastmandland = get("U")
    static let vastra_gotaland = get("O")
    static let orebro = get("T")
    static let ostergotland = get("E")
}
