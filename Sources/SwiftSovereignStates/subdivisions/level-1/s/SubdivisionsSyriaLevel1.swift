//
//  SubdivisionsSyriaLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsSyriaLevel1 = Locale.Region.Subdivision.Level1.Syria

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.syria, allSameType: true, type: Locale.Region.SubdivisionType.governorate)
    struct Syria : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsSyriaLevel1 { // https://en.wikipedia.org/wiki/Governorates_of_Syria | https://en.wikipedia.org/wiki/ISO_3166-2:SY
    static let alHasakah = get("HA")
    static let aleppo = get("HL")
    static let asSuwayda = get("SU")
    static let damascus = get("DI")
    static let daraa = get("DR")
    static let deirEzZor = get("DY")
    static let hama = get("HM")
    static let homs = get("HI")
    static let idlib = get("ID")
    static let latakia = get("LA")
    static let quneitra = get("QU")
    static let raqqa = get("RA")
    static let rifDimashq = get("RD")
    static let tartus = get("TA")
}
