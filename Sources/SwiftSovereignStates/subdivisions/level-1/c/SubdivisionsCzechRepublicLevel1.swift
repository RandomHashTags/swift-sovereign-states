//
//  SubdivisionsCzechRepublicLevel1.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public typealias SubdivisionsCzechRepublicLevel1 = Locale.Region.Subdivision.Level1.CzechRepublic

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.czechia, allSameType: false, type: Locale.Region.SubdivisionType.region)
    struct CzechRepublic : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .prague:
                return Locale.Region.SubdivisionType.capitalCity
            default:
                return Locale.Region.SubdivisionType.region
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsCzechRepublicLevel1 { // https://en.wikipedia.org/wiki/Regions_of_the_Czech_Republic | https://en.wikipedia.org/wiki/ISO_3166-2:CZ
    static let central_bohemian = get("20")
    static let hradec_kralove = get("52")
    static let karlovy_vary = get("41")
    static let liberec = get("51")
    static let moravian_silesian = get("80")
    static let olomouc = get("71")
    static let pardubice = get("53")
    static let plzen = get("32")
    static let south_bohemian = get("31")
    static let south_moravian = get("64")
    static let usti_nad_labem = get("42")
    static let vysocina = get("63")
    static let zlin = get("72")

    static let prague = get("10")
}
