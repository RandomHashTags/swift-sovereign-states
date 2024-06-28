//
//  SubdivisionsIsraelLevel1.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public typealias SubdivisionsIsraelLevel1 = Locale.Region.Subdivision.Level1.Israel

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.israel, allSameType: true, type: Locale.Region.SubdivisionType.district)
    struct Israel : Locale.Region.Subdivision.Level1Protocol {

        /*public var type : Locale.Region.SubdivisionType {
            switch self {
            //case .judea_and_samaria:
            //    return Locale.Region.SubdivisionType.administrativeArea
            default:
                return Locale.Region.SubdivisionType.district
            }
        }*/
    }
}

@SubdivisionCases
public extension SubdivisionsIsraelLevel1 { // https://en.wikipedia.org/wiki/Districts_of_Israel | https://en.wikipedia.org/wiki/ISO_3166-2:IL
    static let central = get("M")
    static let haifa = get("HA")
    static let jerusalem = get("JM")
    static let northern = get("Z")
    static let southern = get("D")
    static let tel_aviv = get("TA")
    
    //static let judea_and_samaria = get("1")
}
