//
//  SubdivisionsBahamasLevel1.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public typealias SubdivisionsBahamasLevel1 = Locale.Region.Subdivision.Level1.Bahamas

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.bahamas, allSameType: true, type: Locale.Region.SubdivisionType.district)
    struct Bahamas : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsBahamasLevel1 { // https://en.wikipedia.org/wiki/Local_government_in_The_Bahamas | https://en.wikipedia.org/wiki/ISO_3166-2:BS
    static let acklins = get("AK")
    static let berryIslands = get("BY")
    static let bimini = get("BI")
    static let blackPoint = get("BP")
    static let catIsland = get("CI")
    static let centralAbaco = get("CO")
    static let centralAndros = get("CS")
    static let centralEleuthera = get("CE")
    static let cityOfFreeport = get("FP")
    static let crookedIsland = get("CK")
    static let eastGrandBahama = get("EG")
    static let exuma = get("EX")
    static let grandCay = get("GC")
    static let harbourIsland = get("HI")
    static let hopeTown = get("HT")
    static let inagua = get("IN")
    static let longIsland = get("LI")
    static let mangroveCay = get("MC")
    static let mayaguana = get("MG")
    static let mooresIsland = get("MI")
    static let newProvidence = get("NP") // TODO: validate is district
    static let northAbaco = get("NO")
    static let northAndros = get("NS")
    static let northEleuthera = get("NE")
    static let raggedIsland = get("RI")
    static let rumCay = get("EC")
    static let sanSalvadorIsland = get("SS")
    static let southAbaco = get("SO")
    static let southAndros = get("SA")
    static let southEleuthera = get("SE")
    static let spanishWells = get("SW")
    static let westGrandBahama = get("WG")
}
