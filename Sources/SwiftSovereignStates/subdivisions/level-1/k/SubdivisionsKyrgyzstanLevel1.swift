//
//  SubdivisionsKyrgyzstanLevel1.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public typealias SubdivisionsKyrgyzstanLevel1 = Locale.Region.Subdivision.Level1.Kyrgyzstan

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.kyrgyzstan, allSameType: false, type: Locale.Region.SubdivisionType.region)
    struct Kyrgyzstan : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .bishkek, .oshCity:
                return Locale.Region.SubdivisionType.independentCity
            default:
                return Locale.Region.SubdivisionType.region
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsKyrgyzstanLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Kyrgyzstan | https://en.wikipedia.org/wiki/ISO_3166-2:KG
    static let batken = get("B")
    static let chuy = get("C")
    static let issyk_kul = get("Y")
    static let jalal_abad = get("J")
    static let naryn = get("N")
    static let osh = get("O")
    static let talas = get("T")
    
    static let bishkek = get("GB")
    static let oshCity = get("GO")
}
