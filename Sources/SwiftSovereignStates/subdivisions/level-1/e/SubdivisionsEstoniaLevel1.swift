//
//  SubdivisionsEstoniaLevel1.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public typealias SubdivisionsEstoniaLevel1 = Locale.Region.Subdivision.Level1.Estonia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.estonia, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct Estonia : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsEstoniaLevel1 { // https://en.wikipedia.org/wiki/Counties_of_Estonia | https://en.wikipedia.org/wiki/ISO_3166-2:EE
    static let harju = get("37")
    static let hiiu = get("39")
    static let idaViru = get("45")
    static let järva = get("52")
    static let jõgeva = get("50")
    static let lääne = get("56")
    static let lääneViru = get("60")
    static let pärnu = get("68")
    static let põlva = get("64")
    static let rapla = get("71")
    static let saare = get("74")
    static let tartu = get("79")
    static let valga = get("81")
    static let viljandi = get("84")
    static let võru = get("87")
}
