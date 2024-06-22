//
//  SubdivisionsNorwayLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsNorwayLevel1 = Locale.Region.Subdivision.Level1.Norway

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.norway, allSameType: false, type: Locale.Region.SubdivisionType.county)
    struct Norway : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .jan_mayen,
                    .svalbard:
                return Locale.Region.SubdivisionType.territory
            /*case .bouvet_island,
                    .peter_i_island,
                    .queen_maud_land:
                return Locale.Region.SubdivisionType.dependency*/
            default:
                return Locale.Region.SubdivisionType.county
            }
        }
    }
}

public extension SubdivisionsNorwayLevel1 { // https://en.wikipedia.org/wiki/Counties_of_Norway | https://en.wikipedia.org/wiki/ISO_3166-2:NO
    static let agder = get("42")
    static let innlandet = get("34")
    static let more_og_romsdal = get("15")
    static let nordland = get("18")
    static let oslo = get("03")
    static let rogaland = get("11")
    static let troms_og_finnmark = get("54")
    static let trondelag = get("50")
    static let vestfold_og_telemark = get("38")
    static let vestland = get("46")
    static let viken = get("30")
    
    static let jan_mayen = get("22")
    static let svalbard = get("21")
    
    //static let bouvet_island
    //static let peter_i_island
    //static let queen_maud_land
}