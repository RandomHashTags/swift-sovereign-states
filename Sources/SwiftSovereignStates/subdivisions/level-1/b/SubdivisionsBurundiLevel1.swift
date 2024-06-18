//
//  SubdivisionsBurundiLevel1.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public typealias SubdivisionsBurundiLevel1 = Locale.Region.Subdivision.Level1.Burundi

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.burundi, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct Burundi : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsBurundiLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Burundi | https://en.wikipedia.org/wiki/ISO_3166-2:BI
    static let bubanza = get("BB")
    static let bujumburaMairie = get("BM")
    static let bujumburaRural = get("BL")
    static let bururi = get("BR")
    static let cankuzo = get("CA")
    static let cibitoke = get("CI")
    static let gitega = get("GI")
    static let karuzi = get("KR")
    static let kayanza = get("KY")
    static let kirundo = get("KI")
    static let makamba = get("MA")
    static let muramvya = get("MU")
    static let muyinga = get("MY")
    static let mwaro = get("MW")
    static let ngozi = get("NG")
    static let rumonge = get("RM")
    static let rutana = get("RT")
    static let ruyigi = get("RY")
}
