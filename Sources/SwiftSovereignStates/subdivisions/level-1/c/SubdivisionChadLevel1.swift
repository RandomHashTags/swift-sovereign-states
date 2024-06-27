//
//  SubdivisionChadLevel1.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public typealias SubdivisionChadLevel1 = Locale.Region.Subdivision.Level1.Chad

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.chad, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct Chad : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionChadLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Chad | https://en.wikipedia.org/wiki/ISO_3166-2:TD
    static let bahr_el_gazel = get("BG")
    static let batha = get("BA")
    static let borkou = get("BO")
    static let chari_baguirmi = get("CB")
    static let ennedi_est = get("EE")
    static let ennedi_ouest = get("EO")
    static let guera = get("GR")
    static let hadjer_lamis = get("HL")
    static let kanem = get("KA")
    static let lac = get("LC")
    static let logone_occidental = get("LO")
    static let logone_oriental = get("LR")
    static let mandoul = get("MA")
    static let mayo_kebbi_est = get("ME")
    static let mayo_kebbi_ouest = get("MO")
    static let moyen_chari = get("MC")
    static let n_djamena = get("ND")
    static let ouaddai = get("OD")
    static let salamat = get("SA")
    static let sila = get("SI")
    static let tandjile = get("TA")
    static let tibesti = get("TI")
    static let wadi_fira = get("WF")
}
