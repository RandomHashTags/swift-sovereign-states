//
//  SubdivisionsSouthSudanLevel1.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public typealias SubdivisionsSouthSudanLevel1 = Locale.Region.Subdivision.Level1.SouthSudan

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.southSudan, allSameType: false, type: Locale.Region.SubdivisionType.state)
    struct SouthSudan : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .abyei, .greater_pibor, .ruweng:
                return Locale.Region.SubdivisionType.administrativeArea
            default:
                return Locale.Region.SubdivisionType.state
            }
        }
    }
}

public extension SubdivisionsSouthSudanLevel1 { // https://en.wikipedia.org/wiki/States_of_South_Sudan | https://en.wikipedia.org/wiki/ISO_3166-2:SS
    static let central_equatoria = get("EC")
    static let eastern_equatoria = get("EE")
    static let jonglei = get("JG")
    static let lakes = get("LK")
    static let northern_bahr_el_ghazal = get("BN")
    static let unity = get("UY")
    static let upper_nile = get("NU")
    static let warrap = get("WR")
    static let western_bahr_el_ghazal = get("BW")
    static let western_equatoria = get("EW")
    
    static let abyei = get("AB")
    static let greater_pibor = get("PG")
    static let ruweng = get("RW")
}
