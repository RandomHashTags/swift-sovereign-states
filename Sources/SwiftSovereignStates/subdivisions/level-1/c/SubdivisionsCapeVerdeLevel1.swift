//
//  SubdivisionsCapeVerdeLevel1.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation

public typealias SubdivisionsCapeVerdeLevel1 = Locale.Region.Subdivision.Level1.CapeVerde

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.capeVerde, allSameType: true, type: Locale.Region.SubdivisionType.municipality)
    struct CapeVerde : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsCapeVerdeLevel1 { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Cape_Verde | https://en.wikipedia.org/wiki/ISO_3166-2:CV
    static let boa_vista = get("BV")
    static let brava = get("BR")
    static let maio = get("MA")
    static let mosteiros = get("MO")
    static let paul = get("PA")
    static let porto_novo = get("PN")
    static let praia = get("PR")
    static let ribeira_brava = get("RB")
    static let ribeira_grande = get("RG")
    static let ribeira_grande_de_santiago = get("RS")
    static let sal = get("SL")
    static let santa_catarina = get("CA")
    static let santa_catarina_do_fogo = get("CF")
    static let santa_cruz = get("CR")
    static let sao_domingos = get("SD")
    static let sao_filipe = get("SF")
    static let sao_lourenco_dos_orgaos = get("SO")
    static let sao_miguel = get("SM")
    static let sao_salvador_do_mundo = get("SS")
    static let sao_vicente = get("SV")
    static let tarrafal = get("TA")
    static let tarrafal_de_sao_nicolau = get("TS")
}
