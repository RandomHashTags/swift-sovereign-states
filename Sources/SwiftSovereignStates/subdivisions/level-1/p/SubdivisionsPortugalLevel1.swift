//
//  SubdivisionsPortugalLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsPortugalLevel1 = Locale.Region.Subdivision.Level1.Portugal

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.portugal, allSameType: false, type: Locale.Region.SubdivisionType.district)
    struct Portugal : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .azores,
                    .madeira:
                return Locale.Region.SubdivisionType.autonomousRegion
            default:
                return Locale.Region.SubdivisionType.district
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsPortugalLevel1 { // https://en.wikipedia.org/wiki/Districts_of_Portugal | https://en.wikipedia.org/wiki/ISO_3166-2:PT
    static let aveiro = get("01")
    static let azores = get("20")
    static let beja = get("02")
    static let braga = get("03")
    static let bragança = get("04")
    static let coimbra = get("06")
    static let evora = get("07")
    static let faro = get("08")
    static let guarda = get("09")
    static let leiria = get("10")
    static let lisbon = get("11")
    static let madeira = get("30")
    static let portalegre = get("12")
    static let porto = get("13")
    static let royalTown = get("17")
    static let santarém = get("14")
    static let setúbal = get("15")
    static let vianaDoCastelo = get("16")
    static let viseu = get("18")
    static let whiteCastle = get("05")
}
