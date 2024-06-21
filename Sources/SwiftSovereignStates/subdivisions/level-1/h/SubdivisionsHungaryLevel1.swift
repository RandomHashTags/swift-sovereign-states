//
//  SubdivisionsHungaryLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsHungaryLevel1 = Locale.Region.Subdivision.Level1.Hungary

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.hungary, allSameType: true, type: Locale.Region.SubdivisionType.county)
    struct Hungary : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsHungaryLevel1 { // https://en.wikipedia.org/wiki/Counties_of_Hungary | https://en.wikipedia.org/wiki/ISO_3166-2:HU | // TODO: add `city with county rights` values
    static let bacs_kiskun = get("BK")
    static let baranya = get("BA")
    static let bekes = get("BE")
    static let borsod_abauj_zemplen = get("BZ")
    static let budapest = get("BU")
    static let csongrad_csanad = get("CS")
    static let fejer = get("FE")
    static let gyor_moson_sopron = get("GS")
    static let hajdu_bihar = get("HB")
    static let heves = get("HE")
    static let jasz_nagykun_szolnok = get("JN")
    static let komarom_esztergom = get("KE")
    static let nograd = get("NO")
    static let pest = get("PE")
    static let somogy = get("SO")
    static let szabolcs_szatmar_bereg = get("SZ")
    static let tolna = get("TO")
    static let vas = get("VA")
    static let veszprem = get("VE")
    static let zala = get("ZA")
}
