//
//  SubdivisionsCubaLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsCubaLevel1 = Locale.Region.Subdivision.Level1.Cuba

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.cuba, allSameType: false, type: Locale.Region.SubdivisionType.province)
    struct Cuba : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .isla_de_la_juventud:
                return Locale.Region.SubdivisionType.specialMunicipality
            default:
                return Locale.Region.SubdivisionType.province
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsCubaLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Cuba | https://en.wikipedia.org/wiki/ISO_3166-2:CU
    static let artemisa = get("15")
    static let camaguey = get("09")
    static let ciego_de_avila = get("08")
    static let cienfuegos = get("06")
    static let granma = get("12")
    static let guantanamo = get("14")
    static let holguin = get("11")
    static let la_habana = get("03")
    static let las_tunas = get("10")
    static let matanzas = get("04")
    static let mayabeque = get("16")
    static let pinar_del_rio = get("01")
    static let sancti_spiritus = get("07")
    static let santiago_de_cuba = get("13")
    static let villa_clara = get("05")

    static let isla_de_la_juventud = get("99")
}
