//
//  SubdivisionsMaldivesLevel1.swift
//  
//
//  Created by Evan Anderson on 2/12/23.
//

import Foundation

public typealias SubdivisionsMaldivesLevel1 = Locale.Region.Subdivision.Level1.Maldives

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.maldives, allSameType: false, type: Locale.Region.SubdivisionType.atoll)
    struct Maldives : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .male:
                return Locale.Region.SubdivisionType.city
            default:
                return Locale.Region.SubdivisionType.atoll
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsMaldivesLevel1 { // https://en.wikipedia.org/wiki/Administrative_divisions_of_the_Maldives | https://en.wikipedia.org/wiki/ISO_3166-2:MV
    static let alif_alif = get("02")
    static let alifu_dhaalu = get("00")
    static let baa = get("20")
    static let dhaalu = get("17")
    static let faafu = get("14")
    static let gaafu_alifu = get("27")
    static let haa_alifu = get("07")
    static let haddhunmathi = get("05")
    static let kaafu = get("26")
    static let kolhumadulu = get("08")
    static let lhaviyani = get("03")
    static let meemu = get("12")
    static let noonu = get("25")
    static let raa = get("13")
    static let shaviyani = get("24")
    static let vaavu = get("04")
    
    static let gnaviyani = get("29")
    static let haa_dhaalu = get("23")

    static let male = get("MLE")
    static let addu = get("01")
}
