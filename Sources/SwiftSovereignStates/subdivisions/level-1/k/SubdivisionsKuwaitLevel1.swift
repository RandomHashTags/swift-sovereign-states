//
//  SubdivisionsKuwaitLevel1.swift
//  
//
//  Created by Evan Anderson on 9/27/22.
//

import Foundation

public typealias SubdivisionsKuwaitLevel1 = Locale.Region.Subdivision.Level1.Kuwait

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.kuwait, allSameType: true, type: Locale.Region.SubdivisionType.governorate)
    struct Kuwait : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsKuwaitLevel1 { // https://en.wikipedia.org/wiki/Governorates_of_Kuwait | https://en.wikipedia.org/wiki/ISO_3166-2:KW
    static let ahmadi = get("AH")
    static let al_asimah = get("KU")
    static let al_jahra = get("JA")
    static let farwaniya = get("FA")
    static let hawalli = get("HA")
    static let mubarak_al_kabeer = get("MU")
}
