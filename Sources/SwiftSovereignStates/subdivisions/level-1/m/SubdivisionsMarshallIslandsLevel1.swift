//
//  SubdivisionsMarshallIslandsLevel1.swift
//  
//
//  Created by Evan Anderson on 2/13/23.
//

import Foundation

public typealias SubdivisionsMarshallIslandsLevel1 = Locale.Region.Subdivision.Level1.MarshallIslands

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.marshallIslands, allSameType: true, type: Locale.Region.SubdivisionType.atoll)
    struct MarshallIslands : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsMarshallIslandsLevel1 { // https://en.wikipedia.org/wiki/List_of_islands_of_the_Marshall_Islands | https://en.wikipedia.org/wiki/ISO_3166-2:MH
    static let ailinglaplap = get("ALL")
    static let ailuk = get("ALK")
    static let arno = get("ARN")
    static let aur = get("AUR")
    static let ebon = get("EBO")
    static let enewetak = get("ENI")
    static let jabat = get("JAB")
    static let jaluit = get("JAL")
    static let kili = get("KIL")
    static let kwajalein = get("KWA")
    static let lae = get("LAE")
    static let lib = get("LIB")
    static let likiep = get("LIK")
    static let majuro = get("MAJ")
    static let maloelap = get("MAL")
    static let mejit = get("MEJ")
    static let mili = get("MIL")
    static let namdrik = get("NMK")
    static let namu = get("NMU")
    static let rongelap = get("RON")
    static let ujae = get("UJA")
    static let utirik = get("UTI")
    static let wotho = get("WTH")
    static let wotje = get("WTJ")
}
