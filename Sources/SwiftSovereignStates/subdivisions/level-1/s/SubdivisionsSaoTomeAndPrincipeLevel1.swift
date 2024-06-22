//
//  SubdivisionsSaoTomeAndPrincipeLevel1.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public typealias SubdivisionsSaoTomeAndPrincipeLevel1 = Locale.Region.Subdivision.Level1.SaoTomeAndPrincipe

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.sãoToméPríncipe, allSameType: false, type: Locale.Region.SubdivisionType.district)
    struct SaoTomeAndPrincipe : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .autonomous_region_of_principe:
                return Locale.Region.SubdivisionType.autonomousRegion
            default:
                return Locale.Region.SubdivisionType.district
            }
        }
    }
}

public extension SubdivisionsSaoTomeAndPrincipeLevel1 { // https://en.wikipedia.org/wiki/Districts_of_São_Tomé_and_Príncipe | https://en.wikipedia.org/wiki/ISO_3166-2:ST
    static let agua_grande = get("01")
    static let cantagalo = get("02")
    static let caue = get("03")
    static let lemba = get("04")
    static let lobata = get("05")
    static let me_zochi = get("06")
    
    static let autonomous_region_of_principe = get("P")
}
