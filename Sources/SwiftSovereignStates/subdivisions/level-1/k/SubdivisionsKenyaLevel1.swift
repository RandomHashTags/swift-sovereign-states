//
//  SubdivisionsKenyaLevel1.swift
//  
//
//  Created by Evan Anderson on 9/27/22.
//

import Foundation

public typealias SubdivisionsKenyaLevel1 = Locale.Region.Subdivision.Level1.Kenya

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.kenya, allSameType: true, type: Locale.Region.SubdivisionType.county)
    struct Kenya : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsKenyaLevel1 { // https://en.wikipedia.org/wiki/Counties_of_Kenya | https://en.wikipedia.org/wiki/ISO_3166-2:KE
    static let baringo = get("01")
    static let bomet = get("02")
    static let bungoma = get("03")
    static let busia = get("04")
    static let elgeyoMarakwet = get("05")
    static let embu = get("06")
    static let garissa = get("07")
    static let homaBay = get("08")
    static let isiolo = get("09")
    static let kajiado = get("10")
    static let kakamega = get("11")
    static let kericho = get("12")
    static let kiambu = get("13")
    static let kilifi = get("13")
    static let kirinyaga = get("15")
    static let kisii = get("16")
    static let kisumu = get("17")
    static let kitui = get("18")
    static let kwale = get("19")
    static let laikipia = get("20")
    static let lamu = get("21")
    static let machakos = get("22")
    static let makueni = get("23")
    static let mandera = get("24")
    static let marsabit = get("25")
    static let meru = get("26")
    static let migori = get("27")
    static let mombasa = get("28")
    static let muranga = get("29")
    static let nairobi = get("30")
    static let nakuru = get("31")
    static let nandi = get("32")
    static let narok = get("33")
    static let nyamira = get("34")
    static let nyandarua = get("35")
    static let nyeri = get("36")
    static let samburu = get("37")
    static let siaya = get("38")
    static let taitaTaveta = get("39")
    static let tanaRiver = get("40")
    static let tharakaNithi = get("41")
    static let transNzoia = get("42")
    static let turkana = get("43")
    static let uasinGishu = get("44")
    static let vihiga = get("45")
    static let wajir = get("46")
    static let westPokot = get("47")
}
