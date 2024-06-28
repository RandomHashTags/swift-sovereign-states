//
//  SubdivisionsVenezuelaLevel1.swift
//  
//
//  Created by Evan Anderson on 9/21/22.
//

import Foundation

public typealias SubdivisionsVenezuelaLevel1 = Locale.Region.Subdivision.Level1.Venezuela

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.venezuela, allSameType: false, type: Locale.Region.SubdivisionType.state)
    struct Venezuela : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .capital_district:
                return Locale.Region.SubdivisionType.federalDistrict
            default:
                return Locale.Region.SubdivisionType.state
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsVenezuelaLevel1 { // https://en.wikipedia.org/wiki/States_of_Venezuela | https://en.wikipedia.org/wiki/ISO_3166-2:VE
    static let amazonas = get("Z")
    static let anzoategui = get("B")
    static let apure = get("C")
    static let aragua = get("D")
    static let barinas = get("E")
    static let bolivar = get("F")
    static let carabobo = get("G")
    static let cojedes = get("H")
    static let deltaAmacuro = get("Y")
    static let dependenciasFederales = get("W")
    static let falcon = get("I")
    static let guarico = get("J")
    static let laGuaira = get("X")
    static let lara = get("K")
    static let merida = get("L")
    static let miranda = get("M")
    static let monagas = get("N")
    static let nuevaEsparta = get("O")
    static let portuguesa = get("P")
    static let sucre = get("R")
    static let tachira = get("S")
    static let trujillo = get("T")
    static let yaracuy = get("U")
    static let zulia = get("V")
    
    static let capital_district = get("A")
}
