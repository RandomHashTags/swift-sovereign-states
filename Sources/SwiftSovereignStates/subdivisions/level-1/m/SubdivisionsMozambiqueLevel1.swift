//
//  SubdivisionsMozambiqueLevel1.swift
//  
//
//  Created by Evan Anderson on 2/12/23.
//

import Foundation

public typealias SubdivisionsMozambiqueLevel1 = Locale.Region.Subdivision.Level1.Mozambique

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.mozambique, allSameType: false, type: Locale.Region.SubdivisionType.province)
    struct Mozambique : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .maputo_city:
                return Locale.Region.SubdivisionType.city
            default:
                return Locale.Region.SubdivisionType.province
            }
        }
    }
}

public extension SubdivisionsMozambiqueLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Mozambique | https://en.wikipedia.org/wiki/ISO_3166-2:MZ
    static let cabo_delgado = get("P")
    static let gaza = get("G")
    static let inhambane = get("I")
    static let manica = get("B")
    static let maputo = get("L")
    static let maputo_city = get("MPM")
    static let nampula = get("N")
    static let niassa = get("A")
    static let sofala = get("S")
    static let tete = get("T")
    static let zambezia = get("Q")
}
