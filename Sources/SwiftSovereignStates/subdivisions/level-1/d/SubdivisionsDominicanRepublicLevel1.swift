//
//  SubdivisionsDominicanRepublicLevel1.swift
//  
//
//  Created by Evan Anderson on 7/26/22.
//

import Foundation

public typealias SubdivisionsDominicanRepublicLevel1 = Locale.Region.Subdivision.Level1.DominicanRepublic

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.dominicanRepublic, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct DominicanRepublic : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsDominicanRepublicLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_the_Dominican_Republic | https://en.wikipedia.org/wiki/ISO_3166-2:DO
    static let azua = get("02")
    static let baoruco = get("03")
    static let barahona = get("04")
    static let dajabón = get("05")
    static let distritoNacional = get("01") // TODO: national district!!
    static let duarte = get("06")
    static let elSeibo = get("08")
    static let eliasPiña = get("07")
    static let espaillat = get("09")
    static let hatoMayor = get("30")
    static let hermanasMirabal = get("19")
    static let independencia = get("10")
    static let laAltagracia = get("11")
    static let laRomana = get("12")
    static let laVega = get("13")
    static let maríaTrinidadSánchez = get("14")
    static let monseñorNouel = get("28")
    static let monteCristi = get("15")
    static let montePlata = get("29")
    static let pedernales = get("16")
    static let peravia = get("17")
    static let puertoPlata = get("18")
    static let samaná = get("20")
    static let sanCristóbal = get("21")
    static let sanJoséOcoa = get("31")
    static let sanJuan = get("22")
    static let sanPedroMacorís = get("23")
    static let sánchezRamírez = get("24")
    static let santiago = get("25")
    static let santiagoRodríguez = get("26")
    static let santoDomingo = get("32")
    static let valverde = get("27")
}
