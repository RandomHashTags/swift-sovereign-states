//
//  SubdivisionsLuxembourgLevel1.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public typealias SubdivisionsLuxembourgLevel1 = Locale.Region.Subdivision.Level1.Luxembourg

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.luxembourg, allSameType: true, type: Locale.Region.SubdivisionType.canton)
    struct Luxembourg : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsLuxembourgLevel1 { // https://en.wikipedia.org/wiki/Cantons_of_Luxembourg | https://en.wikipedia.org/wiki/ISO_3166-2:LU
    static let capellen = get("CA")
    static let clervaux = get("CL")
    static let diekirch = get("DI")
    static let echternach = get("EC")
    static let esch_sur_alzette = get("ES")
    static let grevenmacher = get("GR")
    static let luxembourg = get("LU")
    static let mersch = get("ME")
    static let redange = get("RD")
    static let remich = get("RM")
    static let vianden = get("VD")
    static let wiltz = get("WI")
}
