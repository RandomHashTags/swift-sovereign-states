//
//  SubdivisionsColombiaLevel1.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation

public typealias SubdivisionsColombiaLevel1 = Locale.Region.Subdivision.Level1.Colombia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.colombia, allSameType: false, type: Locale.Region.SubdivisionType.department)
    struct Colombia : Locale.Region.Subdivision.Level1Protocol {
        
        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .bogota:
                return Locale.Region.SubdivisionType.city
            default:
                return Locale.Region.SubdivisionType.department
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsColombiaLevel1 { // https://en.wikipedia.org/wiki/Departments_of_Colombia | https://en.wikipedia.org/wiki/ISO_3166-2:CO
    static let amazonas = get("AMA")
    static let antioquia = get("ANT")
    static let arauca = get("ARA")
    static let atlantico = get("ATL")
    static let bolivar = get("BOL")
    static let boyaca = get("BOY")
    static let caldas = get("CAL")
    static let caqueta = get("CAQ")
    static let casanare = get("CAS")
    static let cauca = get("CAU")
    static let cesar = get("CES")
    static let choco = get("CHO")
    static let cordoba = get("COR")
    static let cundinamarca = get("CUN")
    static let guainia = get("GUA")
    static let guaviare = get("GUV")
    static let huila = get("HUI")
    static let la_guajira = get("LAG")
    static let magdalena = get("MAG")
    static let meta = get("MET")
    static let narino = get("NAR")
    static let norte_de_santander = get("NSA")
    static let putumayo = get("PUT")
    static let quindio = get("QUI")
    static let risaralda = get("RIS")
    static let san_andres_y_providencia = get("SAP")
    static let santander = get("SAN")
    static let sucre = get("SUC")
    static let toluma = get("TOl")
    static let valle_del_cauca = get("VAC")
    static let vaupes = get("VAU")
    static let vichada = get("VID")
    
    static let bogota = get("DC")
}
