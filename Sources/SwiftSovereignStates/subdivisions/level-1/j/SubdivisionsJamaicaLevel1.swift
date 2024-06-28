//
//  SubdivisionsJamaicaLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsJamaicaLevel1 = Locale.Region.Subdivision.Level1.Jamaica

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.jamaica, allSameType: true, type: Locale.Region.SubdivisionType.parish)
    struct Jamaica : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsJamaicaLevel1 { // https://en.wikipedia.org/wiki/Parishes_of_Jamaica | https://en.wikipedia.org/wiki/ISO_3166-2:JM
    static let hanover = get("09")
    static let saintElizabeth = get("11")
    static let saintJames = get("08")
    static let trelawny = get("07")
    static let westmoreland = get("10")
    static let clarendon = get("13")
    static let manchester = get("12")
    static let saintAnn = get("06")
    static let saintCatherine = get("14")
    static let saintMary = get("05")
    static let kingston = get("01")
    static let portland = get("04")
    static let saintAndrew = get("02")
    static let saintThomas = get("03")
}
