//
//  SubdivisionsChileLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsChileLevel1 = Locale.Region.Subdivision.Level1.Chile

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.chile, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct Chile : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsChileLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Chile | https://en.wikipedia.org/wiki/ISO_3166-2:CL
    static let antofagasta = get("AN")
    static let araucania = get("AR")
    static let arica_and_parinacota = get("AP")
    static let atacama = get("AT")
    static let aysen = get("AI")
    static let biobio = get("BO")
    static let coquimbo = get("CO")
    static let los_lagos = get("LL")
    static let los_rios = get("LR")
    static let magallanes = get("MA")
    static let maule = get("ML")
    static let metropolitan = get("RM")
    static let nuble = get("NB")
    static let o_higgines = get("LI")
    static let tarapaca = get("TA")
    static let valparaiso = get("VS")
}
