//
//  SubdivisionsSamoaLevel1.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public typealias SubdivisionsSamoaLevel1 = Locale.Region.Subdivision.Level1.Samoa

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.samoa, allSameType: true, type: Locale.Region.SubdivisionType.district)
    struct Samoa : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsSamoaLevel1 { // https://en.wikipedia.org/wiki/Districts_of_Samoa | https://en.wikipedia.org/wiki/ISO_3166-2:WS
    static let aana = get("AA")
    static let aigaileTai = get("AL")
    static let atua = get("AT")
    static let faasaleleaga = get("FA")
    static let gagaemauga = get("GE")
    static let gagaifomauga = get("GI")
    static let palauli = get("PA")
    static let satupatea = get("SA")
    static let tuamasaga = get("TU")
    static let vaaOFonoti = get("VF")
    static let vaisigano = get("VS")
}
