//
//  SubdivisionsSouthKoreaLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsSouthKoreaLevel1 = Locale.Region.Subdivision.Level1.SouthKorea

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.southKorea, allSameType: false, type: Locale.Region.SubdivisionType.province)
    struct SouthKorea : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .busan,
                    .daegu,
                    .daejeon,
                    .gwangju,
                    .incheon,
                    .ulsan:
                return Locale.Region.SubdivisionType.metropolitanCity
            case .sejong:
                return Locale.Region.SubdivisionType.specialSelfGoverningCity
            case .seoul:
                return Locale.Region.SubdivisionType.specialCity
            case .gangwon, .jeju:
                return Locale.Region.SubdivisionType.specialSelfGoverningProvince
            default:
                return Locale.Region.SubdivisionType.province
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsSouthKoreaLevel1 { // https://en.wikipedia.org/wiki/Administrative_divisions_of_South_Korea | https://en.wikipedia.org/wiki/ISO_3166-2:KR
    static let busan = get("26")
    static let daegu = get("27")
    static let daejeon = get("30")
    static let gwangju = get("29")
    static let ulsan = get("31")
    static let incheon = get("28")
    
    static let north_chungcheong = get("43")
    static let south_chungcheong = get("44")
    static let gyeonggi = get("41")
    static let north_gyeongsang = get("47")
    static let south_gyeongsang = get("48")
    static let north_jeolla = get("45")
    static let south_jeolla = get("46")

    static let gangwon = get("42")
    static let jeju = get("49")
    
    static let seoul = get("11")

    static let sejong = get("50")
    
}
