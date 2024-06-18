//
//  SubdivisionsAlgeriaLevel1.swift
//  
//
//  Created by Evan Anderson on 6/21/22.
//

import Foundation

public typealias SubdivisionsAlgeriaLevel1 = Locale.Region.Subdivision.Level1.Algeria

public extension Locale.Region.Subdivision.Level1 {
    struct Algeria : Locale.Region.Subdivision.Level1Protocol {
        public var region : Locale.Region { Locale.Region.algeria }
        public let identifier:String

        public init(_ identifier: String) {
            self.identifier = identifier
        }

        public var type : Locale.Region.SubdivisionType {
            return Locale.Region.SubdivisionType.province
        }
    }
}

public extension SubdivisionsAlgeriaLevel1 {  // https://en.wikipedia.org/wiki/Provinces_of_Algeria
    static let adrar = get("01")
    static let ainDefla = get("44")
    static let ainTemouchent = get("46")
    static let algiers = get("16")
    static let annaba = get("23")
    static let batna = get("05")
    static let bechar = get("08")
    static let bejaia = get("06")
    static let beniAbbes = get("52")
    static let biskra = get("07")
    static let blida = get("09")
    static let bordjBajiMokhtar = get("50")
    static let bordjBouArreridj = get("34")
    static let bouira = get("10")
    static let boumerdes = get("35")
    static let chlef = get("02")
    static let constantine = get("25")
    static let djanet = get("56")
    static let djelfa = get("17")
    static let elBayadh = get("32")
    static let elMGhair = get("57")
    static let elMenia = get("58")
    static let elOued = get("39")
    static let elTarf = get("36")
    static let ghardaia = get("47")
    static let guelma = get("24")
    static let illizi = get("33")
    static let inGuezzam = get("54")
    static let inSalah = get("53")
    static let jijel = get("18")
    static let khenchela = get("40")
    static let laghouat = get("03")
    static let mSila = get("28")
    static let mascara = get("29")
    static let medea = get("26")
    static let mila = get("43")
    static let mostaganem = get("27")
    static let naama = get("45")
    static let oran = get("31")
    static let ouargla = get("30")
    static let ouledDjellal = get("51")
    static let oumElBouaghi = get("04")
    static let relizane = get("48")
    static let saida = get("20")
    static let setif = get("19")
    static let sidiBelAbbes = get("22")
    static let skikda = get("21")
    static let soukAhras = get("41")
    static let tamanrasset = get("11")
    static let tebessa = get("12")
    static let tiaret = get("14")
    static let timimoun = get("49")
    static let tindouf = get("37")
    static let tipaza = get("42")
    static let tissemsilt = get("38")
    static let tiziOuzou = get("15")
    static let tlemcen = get("13")
    static let touggourt = get("55")
}
