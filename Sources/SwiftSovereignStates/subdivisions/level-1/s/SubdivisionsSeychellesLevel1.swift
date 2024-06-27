//
//  SubdivisionsSeychellesLevel1.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation

public typealias SubdivisionsSeychellesLevel1 = Locale.Region.Subdivision.Level1.Seychelles

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.seychelles, allSameType: true, type: Locale.Region.SubdivisionType.district)
    struct Seychelles : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsSeychellesLevel1 { // https://en.wikipedia.org/wiki/Districts_of_Seychelles | https://en.wikipedia.org/wiki/ISO_3166-2:SC
    static let anse_aux_pins = get("01")
    static let anse_boileau = get("02")
    static let anse_etoile = get("03")
    static let anse_royale = get("05")
    static let au_cap = get("04")
    
    static let baie_lazare = get("06")
    static let baie_sainte_anne = get("07")
    static let beau_vallon = get("08")
    static let bel_air = get("09")
    static let bel_ombre = get("10")
    static let cascade = get("11")
    static let english_river = get("16")
    static let glacis = get("12")
    static let grand_anse = get("13")
    static let grand_anse_praslin = get("14")
    static let perseverance_i = get("26")
    static let perseverance_ii = get("27")
    static let la_digue_and_inner_islands = get("15")
    static let les_mamelles = get("24")
    static let mont_buxton = get("17")
    static let mont_fleuri = get("18")
    //static let outer_islands
    static let plaisance = get("19")
    static let pointe_la_rue = get("20")
    static let port_glaud = get("21")
    static let roche_caiman = get("25")
    static let saint_louis = get("22")
    static let takamaka = get("23")
}
