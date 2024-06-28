//
//  SubdivisionsMongoliaLevel1.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public typealias SubdivisionsMongoliaLevel1 = Locale.Region.Subdivision.Level1.Mongolia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.mongolia, allSameType: false, type: Locale.Region.SubdivisionType.province)
    struct Mongolia : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .ulaanbaatar:
                return Locale.Region.SubdivisionType.municipality
            default:
                return Locale.Region.SubdivisionType.province
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsMongoliaLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Mongolia | https://en.wikipedia.org/wiki/ISO_3166-2:MN
    static let arkhangai = get("073")
    static let bayan_olgii = get("069")
    static let bayankhongor = get("071")
    static let bulgan = get("067")
    static let darkhan_uul = get("037")
    static let dornod = get("061")
    static let dornogovi = get("063")
    static let dundgovi = get("059")
    static let govi_altai = get("065")
    static let govisumber = get("064")
    static let khentii = get("039")
    static let khovd = get("043")
    static let khovsgol = get("041")
    static let omnogovi = get("053")
    static let orkhon = get("035")
    static let ovorkhangai = get("055")
    static let selenge = get("049")
    static let sukhbaatar = get("051")
    static let tov = get("047")
    static let ulaanbaatar = get("1")
    static let uvs = get("046")
    static let zavkhan = get("057")
}
