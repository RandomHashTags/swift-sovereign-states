//
//  SubdivisionsMoroccoLevel1.swift
//  
//
//  Created by Evan Anderson on 2/13/23.
//

import Foundation

public typealias SubdivisionsMoroccoLevel1 = Locale.Region.Subdivision.Level1.Morocco

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.morocco, allSameType: true, type: Locale.Region.SubdivisionType.region)
    struct Morocco : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsMoroccoLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Morocco | https://en.wikipedia.org/wiki/ISO_3166-2:MA
    static let beni_mellal_khenifra = get("05")
    static let casablanca_settat = get("06")
    static let dakhla_oued_ed_dahab = get("12")
    static let draa_tafilalet = get("08")
    static let fes_meknes = get("03")
    static let guelmim_oued_noun = get("10")
    static let laayoune_sakia_el_hamra = get("11")
    static let marrakech_safi = get("07")
    static let oriental = get("02")
    static let rabat_sale_kenitra = get("04")
    static let souss_massa = get("09")
    static let tanger_tetouan_al_hoceima = get("01")
}
