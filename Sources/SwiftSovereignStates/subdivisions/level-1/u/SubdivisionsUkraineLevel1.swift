//
//  SubdivisionsUkraineLevel1.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public typealias SubdivisionsUkraineLevel1 = Locale.Region.Subdivision.Level1.Ukraine

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.ukraine, allSameType: false, type: Locale.Region.SubdivisionType.oblast)
    struct Ukraine : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .crimea:
                return Locale.Region.SubdivisionType.autonomousRepublic
            case .kyiv_city,
                    .sevastopol:
                return Locale.Region.SubdivisionType.specialSelfGoverningCity
            default:
                return Locale.Region.SubdivisionType.oblast
            }
        }
    }
}

public extension SubdivisionsUkraineLevel1 { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Ukraine | https://en.wikipedia.org/wiki/ISO_3166-2:UA
    static let cherkasy = get("71")
    static let chernihiv = get("74")
    static let chernivtsi = get("77")
    static let dnipropetrovsk = get("12")
    static let donetsk = get("14")
    static let ivano_frankivsk = get("26")
    static let kharkiv = get("63")
    static let kherson = get("65")
    static let khmelnytskyi = get("68")
    static let kirovohrad = get("35")
    static let kyiv = get("32")
    static let luhansk = get("09")
    static let lviv = get("46")
    static let mykolaiv = get("48")
    static let odesa = get("51")
    static let poltava = get("53")
    static let rivne = get("56")
    static let sumy = get("59")
    static let ternopil = get("61")
    static let vinnytsia = get("05")
    static let volyn = get("07")
    static let zakarpattia = get("21")
    static let zaporizhzhia = get("23")
    static let zhytomyr = get("18")
    
    static let crimea = get("43")
    
    static let kyiv_city = get("30")
    static let sevastopol = get("40")
}
