//
//  SubdivisionsBermudaLevel1.swift
//  
//
//  Created by Evan Anderson on 2/11/23.
//

import Foundation

public typealias SubdivisionsBermudaLevel1 = Locale.Region.Subdivision.Level1.Bermuda

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.bermuda, allSameType: false, type: Locale.Region.SubdivisionType.parish)
    struct Bermuda : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .hamilton:
                return Locale.Region.SubdivisionType.city
            case .stGeorgesTown:
                return Locale.Region.SubdivisionType.town
            default:
                return Locale.Region.SubdivisionType.parish
            }
        }
    }
}

public extension SubdivisionsBermudaLevel1 { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Bermuda | https://en.wikipedia.org/wiki/ISO_3166-2:BM
    static let devonshire = get("01")
    static let hamilton = get("02")
    static let paget = get("03")
    static let pembroke = get("04")
    static let sandys = get("05")
    static let smiths = get("06")
    static let southampton = get("07")
    static let stGeorges = get("08")
    static let warwick = get("09")
    
    static let hamiltonCity = get("10")
    static let stGeorgesTown = get("11")
}
