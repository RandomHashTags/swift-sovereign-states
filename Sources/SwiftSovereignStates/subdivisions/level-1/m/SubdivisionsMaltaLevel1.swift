//
//  SubdivisionsMaltaLevel1.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public typealias SubdivisionsMaltaLevel1 = Locale.Region.Subdivision.Level1.Malta

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.malta, allSameType: true, type: Locale.Region.SubdivisionType.council)
    struct Malta : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsMaltaLevel1 { // https://en.wikipedia.org/wiki/Local_councils_of_Malta | https://en.wikipedia.org/wiki/ISO_3166-2:MT
    static let attard = get("01")
    static let balzan = get("02")
    static let birgu = get("03")
    static let birkirkara = get("04")
    static let birzebbuga = get("05")
    static let bormla = get("06")
    static let dingli = get("07")
    static let fgura = get("08")
    static let floriana = get("09")
    static let fontana = get("10")
    static let ghajnsielem = get("13")
    static let gharb = get("14")
    static let gharghur = get("15")
    static let ghasri = get("16")
    static let ghaxaq = get("17")
    static let gudja = get("11")
    static let gzira = get("12")
    static let hamrun = get("18")
    static let iklin = get("19")
    static let isla = get("20")
    static let kalkara = get("21")
    static let kercem = get("22")
    static let kirkop = get("23")
    static let lija = get("24")
    static let luqa = get("25")
    static let marsa = get("26")
    static let marsaskala = get("27")
    static let marsaxlokk = get("28")
    static let mdina = get("29")
    static let mellieha = get("30")
    static let mgarr = get("31")
    static let mosta = get("32")
    static let mqabba = get("33")
    static let msida = get("34")
    static let mtarfa = get("35")
    static let munxar = get("36")
    static let nadur = get("37")
    static let naxxar = get("38")
    static let paola = get("39")
    static let pembroke = get("40")
    static let pieta = get("41")
    static let qala = get("42")
    static let qormi = get("43")
    static let qrendi = get("44")
    static let rabatGozo = get("45")
    static let rabatMalta = get("46")
    static let safi = get("47")
    static let saint_john = get("49")
    static let saint_julians = get("48")
    static let saint_lawrence = get("50")
    static let saint_lucias = get("53")
    static let saint_pauls_bay = get("51")
    static let sannat = get("52")
    static let santa_venera = get("54")
    static let siggiewi = get("55")
    static let sliema = get("56")
    static let swieqi = get("57")
    static let ta_xbiex = get("58")
    static let tarxien = get("59")
    static let valletta = get("60")
    static let xaghra = get("61")
    static let xewkija = get("62")
    static let xghajra = get("63")
    static let zabbar = get("64")
    static let zebbug_gozo = get("65")
    static let zebbug_malta = get("66")
    static let zejtun = get("67")
    static let zurrieq = get("68")
}
