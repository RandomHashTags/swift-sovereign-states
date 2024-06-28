//
//  SubdivisionsAngolaLevel1.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public typealias SubdivisionsAngolaLevel1 = Locale.Region.Subdivision.Level1.Angola

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.angola, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct Angola : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsAngolaLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Angola | https://en.wikipedia.org/wiki/ISO_3166-2:AO
    static let bengo = get("BGO")
    static let benguela = get("BGU")
    static let bie = get("BIE")
    static let cabinda = get("CAB")
    static let cuando_cubango = get("CCU")
    static let cuanza_norte = get("CNO")
    static let cuanza_sul = get("CUS")
    static let cunene = get("CNN")
    static let huambo = get("HUA")
    static let huila = get("HUI")
    static let luanda = get("LUA")
    static let lunda_norte = get("LNO")
    static let lunda_sul = get("LSU")
    static let malanje = get("MAL")
    static let moxico = get("MOX")
    static let namibe = get("NAM")
    static let uige = get("UIG")
    static let zaire = get("ZAI")
}
