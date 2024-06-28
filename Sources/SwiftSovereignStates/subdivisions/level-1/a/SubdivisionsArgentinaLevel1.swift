//
//  SubdivisionsArgentinaLevel1.swift
//  
//
//  Created by Evan Anderson on 6/21/22.
//

import Foundation

public typealias SubdivisionsArgentinaLevel1 = Locale.Region.Subdivision.Level1.Argentina

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.argentina, allSameType: false, type: Locale.Region.SubdivisionType.province)
    struct Argentina : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .buenos_aires:
                return Locale.Region.SubdivisionType.autonomousCity
            default:
                return Locale.Region.SubdivisionType.province
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsArgentinaLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Argentina | https://en.wikipedia.org/wiki/ISO_3166-2:AR
    static let autonomous_city_of_buenos_aires = get("C")
    static let buenos_aires = get("B")
    static let catamarca = get("K")
    static let chaco = get("H")
    static let chubut = get("U")
    static let cordoba = get("X")
    static let corrientes = get("W")
    static let entre_rios = get("E")
    static let formosa = get("P")
    static let jujuy = get("Y")
    static let la_pampa = get("L")
    static let la_rioja = get("F")
    static let mendoza = get("M")
    static let misiones = get("N")
    static let neuquen = get("Q")
    static let rio_negreo = get("R")
    static let salta = get("A")
    static let san_juan = get("J")
    static let san_luis = get("D")
    static let santa_cruz = get("Z")
    static let santa_fe = get("S")
    static let santiago_del_estero = get("G")
    static let tierra_del_fuego_antartida_e_islas_del_atlantico_sur = get("V")
    static let tucuman = get("T")
}
