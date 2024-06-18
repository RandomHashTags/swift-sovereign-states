//
//  SubdivisionsEcuadorLevel1.swift
//  
//
//  Created by Evan Anderson on 7/26/22.
//

import Foundation

public typealias SubdivisionsEcuadorLevel1 = Locale.Region.Subdivision.Level1.Ecuador

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.ecuador, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct Ecuador : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsEcuadorLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Ecuador | https://en.wikipedia.org/wiki/ISO_3166-2:EC
    static let azuay = get("A")
    static let bolívar = get("B")
    static let cañar = get("F")
    static let carchi = get("C")
    static let chimborazo = get("H")
    static let cotopaxi = get("X")
    static let elOro = get("O")
    static let esmeraldas = get("E")
    static let galápagos = get("W")
    static let guayas = get("G")
    static let imbabura = get("I")
    static let loja = get("L")
    static let losRíos = get("R")
    static let manabí = get("M")
    static let moronaSantigao = get("S")
    static let napo = get("N")
    static let orellana = get("D")
    static let pastaza = get("Y")
    static let pichincha = get("P")
    static let santaElena = get("SE")
    static let santoDomingoTsáchilas = get("SD")
    static let sucumbios = get("U")
    static let tungurahua = get("T")
    static let zamoraChinchipe = get("Z")
}
