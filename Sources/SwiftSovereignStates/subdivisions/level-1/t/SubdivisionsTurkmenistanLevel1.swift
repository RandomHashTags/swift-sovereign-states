//
//  SubdivisionsTurkmenistanLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsTurkmenistanLevel1 = Locale.Region.Subdivision.Level1.Turkmenistan

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.turkmenistan, allSameType: false, type: Locale.Region.SubdivisionType.province)
    struct Turkmenistan : Locale.Region.Subdivision.Level1Protocol {
        
        public var type: Locale.Region.SubdivisionType {
            switch self {
                case .ashgabat:
                    return Locale.Region.SubdivisionType.city
                default:
                    return Locale.Region.SubdivisionType.province
            }
        }
    }
}

public extension SubdivisionsTurkmenistanLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Turkmenistan | https://en.wikipedia.org/wiki/ISO_3166-2:TM
    static let ahal = get("A")
    static let ashgabat = get("S")
    static let balkan = get("B")
    static let daşoguz = get("D")
    static let lebap = get("L")
    static let mary = get("M")
}
