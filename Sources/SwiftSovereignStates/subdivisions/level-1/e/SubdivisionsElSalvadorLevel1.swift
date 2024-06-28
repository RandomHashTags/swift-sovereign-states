//
//  SubdivisionsElSalvadorLevel1.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public typealias SubdivisionsElSalvadorLevel1 = Locale.Region.Subdivision.Level1.ElSalvador

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.elSalvador, allSameType: true, type: Locale.Region.SubdivisionType.department)
    struct ElSalvador : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsElSalvadorLevel1 { // https://en.wikipedia.org/wiki/Departments_of_El_Salvador | https://en.wikipedia.org/wiki/ISO_3166-2:SV
    static let ahuachapán = get("AH")
    static let cabañas = get("CA")
    static let chalatenango = get("CH")
    static let cuscatlán = get("CU")
    static let laLibertad = get("LI")
    static let laPaz = get("PA")
    static let laUnión = get("UN")
    static let morazán = get("MO")
    static let sanMiguel = get("SM")
    static let sanSalvador = get("SS")
    static let sanVicente = get("SV")
    static let santaAna = get("SA")
    static let sonsonate = get("SO")
    static let usulután = get("US")
}
