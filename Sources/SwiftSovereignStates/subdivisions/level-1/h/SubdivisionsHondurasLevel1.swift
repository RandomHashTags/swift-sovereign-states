//
//  SubdivisionsHondurasLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsHondurasLevel1 = Locale.Region.Subdivision.Level1.Honduras

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.honduras, allSameType: true, type: Locale.Region.SubdivisionType.department)
    struct Honduras : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsHondurasLevel1 { // https://en.wikipedia.org/wiki/Departments_of_Honduras | https://en.wikipedia.org/wiki/ISO_3166-2:HN
    static let atlantida = get("AT")
    static let choluteca = get("CH")
    static let colon = get("CL")
    static let comayagua = get("CM")
    static let copan = get("CP")
    static let cortes = get("CR")
    static let el_paraiso = get("EP")
    static let francisco_morazan = get("FM")
    static let gracias_a_dios = get("GD")
    static let intibuca = get("IN")
    static let bay_islands = get("IB")
    static let la_paz = get("LP")
    static let lempira = get("LE")
    static let ocotepeque = get("OC")
    static let olancho = get("OL")
    static let santa_barabara = get("SB")
    static let valle = get("VA")
    static let yoro = get("YO")
}
