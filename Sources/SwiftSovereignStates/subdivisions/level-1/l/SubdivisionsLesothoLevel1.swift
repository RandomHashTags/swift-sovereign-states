//
//  SubdivisionsLesothoLevel1.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public typealias SubdivisionsLesothoLevel1 = Locale.Region.Subdivision.Level1.Lesotho

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.lesotho, allSameType: true, type: Locale.Region.SubdivisionType.district)
    struct Lesotho : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsLesothoLevel1 { // https://en.wikipedia.org/wiki/Districts_of_Lesotho | https://en.wikipedia.org/wiki/ISO_3166-2:LS
    static let berea = get("D")
    static let buthaButhe = get("B")
    static let leribe = get("C")
    static let mafeteng = get("E")
    static let maseru = get("A")
    static let mohalesHoek = get("F")
    static let mokhotlong = get("J")
    static let qachasNek = get("H")
    static let quthing = get("G")
    static let thabaTseka = get("K")
}
