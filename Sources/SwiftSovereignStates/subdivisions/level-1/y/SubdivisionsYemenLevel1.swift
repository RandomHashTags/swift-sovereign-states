//
//  SubdivisionsYemenLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsYemenLevel1 = Locale.Region.Subdivision.Level1.Yemen

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.yemen, allSameType: false, type: Locale.Region.SubdivisionType.governorate)
    struct Yemen : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .sanaa_city:
                return Locale.Region.SubdivisionType.city
            default:
                return Locale.Region.SubdivisionType.governorate
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsYemenLevel1 { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Yemen | https://en.wikipedia.org/wiki/ISO_3166-2:YE
    static let aden = get("AD")
    static let amran = get("AM")
    static let abyan = get("AB")
    static let dhale = get("DA")
    static let al_bayda = get("BA")
    static let al_hudaydah = get("HU")
    static let al_jawf = get("JA")
    static let al_mahrah = get("MR")
    static let al_mahwit = get("MW")
    static let sanaa_city = get("SA")
    static let dhamar = get("DH")
    static let hadhramaut = get("HD")
    static let hajjah = get("HJ")
    static let ibb = get("IB")
    static let lahij = get("LA")
    static let marib = get("MA")
    static let raymah = get("RA")
    static let saada = get("SD")
    static let sanaa = get("SN")
    static let shabwah = get("SH")
    static let socotra = get("SU")
    static let taiz = get("TA")
}
