//
//  SubdivisionsPeruLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsPeruLevel1 = Locale.Region.Subdivision.Level1.Peru

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.peru, allSameType: true, type: Locale.Region.SubdivisionType.department)
    struct Peru : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsPeruLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Peru | https://en.wikipedia.org/wiki/ISO_3166-2:PE
    static let amazonas = get("AMA")
    static let ancash = get("ANC")
    static let apurimac = get("APU")
    static let arequipa = get("ARE")
    static let ayacucho = get("AYA")
    static let cajamarca = get("CAJ")
    static let callao = get("CAL")
    static let cuzco = get("CUS")
    static let huancavelica = get("HUV")
    static let huanuco = get("HUC")
    static let ica = get("ICA")
    static let junin = get("JUN")
    static let la_libertad = get("LAL")
    static let lambayeque = get("LAM")
    static let lima = get("LIM")
    static let loreto = get("LOR")
    static let madre_de_dios = get("MDD")
    static let moquegua = get("MOQ")
    static let pasco = get("PAS")
    static let piura = get("PIU")
    static let puno = get("PUN")
    static let san_martin = get("SAM")
    static let tacna = get("TAC")
    static let tumbes = get("TUM")
    static let ucayali = get("UCA")
}
