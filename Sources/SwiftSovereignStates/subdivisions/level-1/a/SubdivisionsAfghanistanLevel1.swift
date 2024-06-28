//
//  SubdivisionsAfghanistanLevel1.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public typealias SubdivisionsAfghanistanLevel1 = Locale.Region.Subdivision.Level1.Afghanistan

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.afghanistan, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct Afghanistan : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsAfghanistanLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Afghanistan
    static let badakhshan = get("BDS")
    static let badghis = get("BDG")
    static let baghlan = get("BGL")
    static let balkh = get("BAL")
    static let bamyan = get("BAM")
    static let daykundi = get("DAY")
    static let farah = get("FRA")
    static let faryab = get("FYB")
    static let ghazni = get("GHA")
    static let ghor = get("GHO")
    static let helmand = get("HEL")
    static let herat = get("HER")
    static let jowzjan = get("JOW")
    static let kabul = get("KAB")
    static let kandahar = get("KAN")
    static let kapisa = get("KAP")
    static let khost = get("KHO")
    static let kunar = get("KNR")
    static let kunduz = get("KDZ")
    static let laghman = get("LAG")
    static let logar = get("LOG")
    static let nangarhar = get("NAN")
    static let nimruz = get("NIM")
    static let nuristan = get("NUR")
    static let paktia = get("PIA")
    static let paktika = get("PKA")
    static let panjshir = get("PAN")
    static let parwan = get("PAR")
    static let samangan = get("SAM")
    static let sarePol = get("SAR")
    static let takhar = get("TAK")
    static let uruzgan = get("URU")
    static let wardak = get("WAR")
    static let zabul = get("ZAB")
}