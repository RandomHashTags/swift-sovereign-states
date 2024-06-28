//
//  SubdivisionsPalauLevel1.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public typealias SubdivisionsPalauLevel1 = Locale.Region.Subdivision.Level1.Palau

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.palau, allSameType: true, type: Locale.Region.SubdivisionType.state)
    struct Palau : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsPalauLevel1 { // https://en.wikipedia.org/wiki/States_of_Palau | https://en.wikipedia.org/wiki/ISO_3166-2:PW
    static let aimeliik = get("002")
    static let airai = get("004")
    static let angaur = get("010")
    static let hatohobei = get("050")
    static let kayangel = get("100")
    static let koror = get("150")
    static let melekeok = get("212")
    static let ngaraard = get("214")
    static let ngarchelong = get("218")
    static let ngardmau = get("222")
    static let ngatpang = get("224")
    static let ngchesar = get("226")
    static let ngeremlengui = get("227")
    static let ngiwal = get("228")
    static let peleliu = get("350")
    static let sonsorol = get("370")
}
