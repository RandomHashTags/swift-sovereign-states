//
//  SubdivisionsTanzaniaLevel1.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public typealias SubdivisionsTanzaniaLevel1 = Locale.Region.Subdivision.Level1.Tanzania

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.tanzania, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct Tanzania : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsTanzaniaLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Tanzania | https://en.wikipedia.org/wiki/ISO_3166-2:TZ
    static let arusha = get("01")
    static let dar_es_salaam = get("02")
    static let dodoma = get("03")
    static let geita = get("27")
    static let iringa = get("04")
    static let kagera = get("05")
    static let katavi = get("28")
    static let kigoma = get("08")
    static let kilimanjaro = get("09")
    static let lindi = get("12")
    static let manyara = get("26")
    static let mara = get("13")
    static let mbeya = get("14")
    static let mjini_magharibi = get("15")
    static let morogoro = get("16")
    static let mtwara = get("17")
    static let mwanza = get("18")
    static let njombe = get("29")
    static let pemba_north = get("06")
    static let pemba_south = get("10")
    static let pwani = get("19")
    static let rukwa = get("20")
    static let ruvuma = get("21")
    static let shinyanga = get("22")
    static let simiyu = get("30")
    static let singida = get("23")
    static let songwe = get("31")
    static let tabora = get("24")
    static let tanga = get("25")
    static let unguja_north = get("07")
    static let unguja_south = get("11")
}
