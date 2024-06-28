//
//  SubdivisionsFinlandLevel1.swift
//  
//
//  Created by Evan Anderson on 2/11/23.
//

import Foundation

public typealias SubdivisionsFinlandLevel1 = Locale.Region.Subdivision.Level1.Finland

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.finland, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct Finland : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsFinlandLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Finland | https://en.wikipedia.org/wiki/ISO_3166-2:FI
    static let aland = get("01")
    static let central_finland = get("08")
    static let central_ostrobothnia = get("07")
    static let kainuu = get("05")
    static let kanta_hame = get("06")
    static let kymenlaakso = get("09")
    static let lapland = get("10")
    static let north_karelia = get("13")
    static let north_ostrobothnia = get("14")
    static let north_savo = get("15")
    static let ostrobothnia = get("12")
    static let paijat_hame = get("16")
    static let pirkanmaa = get("11")
    static let satakunta = get("17")
    static let south_karelia = get("02")
    static let south_ostrobothnia = get("03")
    static let south_savo = get("04")
    static let southwest_finland = get("19")
    static let uusimaa = get("18")
}
