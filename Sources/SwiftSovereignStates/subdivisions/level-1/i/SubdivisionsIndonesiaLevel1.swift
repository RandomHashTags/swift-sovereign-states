//
//  SubdivisionsIndonesiaLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsIndonesiaLevel1 = Locale.Region.Subdivision.Level1.Indonesia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.indonesia, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct Indonesia : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsIndonesiaLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Indonesia | https://en.wikipedia.org/wiki/ISO_3166-2:ID
    static let aceh = get("AC")
    static let bali = get("BA")
    static let bangkaBelitungIslands = get("BB")
    static let banten = get("BT")
    static let bengkulu = get("BE")
    static let centralJava = get("JT")
    static let centralKalimantan = get("KT")
    static let centralPapua = get("PT")
    static let centralSulawesi = get("ST")
    static let eastJava = get("JI")
    static let eastKalimantan = get("KI")
    static let eastNusaTenggara = get("NT")
    static let gorontalo = get("GO")
    static let highlandPapua = get("PE")
    static let jakarta = get("JK")
    static let jambi = get("JA")
    static let lampung = get("LA")
    static let maluku = get("MA")
    static let northKalimantan = get("KU")
    static let northMaluku = get("MU")
    static let northSulawesi = get("SA")
    static let northSumatra = get("SU")
    static let papua = get("PA")
    static let riau = get("RI")
    static let riauIslands = get("KR")
    static let southeastSulawesi = get("SG")
    static let southKalimantan = get("KS")
    static let southPapua = get("PS")
    static let southSulawesi = get("SN")
    static let southSumatra = get("SS")
    static let southwestPapua = get("PD")
    static let westJava = get("JB")
    static let westKalimantan = get("KB")
    static let westNusaTenggara = get("NB")
    static let westPapua = get("PB")
    static let westSulawesi = get("SR")
    static let westSumatra = get("SB")
    static let specialRegionYogyakarta = get("YO")
}
