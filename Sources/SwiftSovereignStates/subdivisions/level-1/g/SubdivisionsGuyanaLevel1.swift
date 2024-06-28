//
//  SubdivisionsGuyanaLevel1.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation

public typealias SubdivisionsGuyanaLevel1 = Locale.Region.Subdivision.Level1.Guyana

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.guyana, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct Guyana : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsGuyanaLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Guyana | https://en.wikipedia.org/wiki/ISO_3166-2:GY
    static let barima_waini = get("BA")
    static let cuyuni_mazaruni = get("CU")
    static let demerara_mahaica = get("DE")
    static let east_berbice_corentyne = get("EB")
    static let essequibo_islands_west_demerara = get("ES")
    static let mahaica_berbice = get("MA")
    static let pomeroon_supenaam = get("PM")
    static let potaro_siparuni = get("PT")
    static let upper_demerara_berbice = get("UD")
    static let upper_takutu_upper_essequibo = get("UT")
}
