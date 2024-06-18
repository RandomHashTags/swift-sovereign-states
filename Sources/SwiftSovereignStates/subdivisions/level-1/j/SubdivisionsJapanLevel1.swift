//
//  SubdivisionsJapanLevel1.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public typealias SubdivisionsJapanLevel1 = Locale.Region.Subdivision.Level1.Japan

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.japan, allSameType: true, type: Locale.Region.SubdivisionType.prefecture)
    struct Japan : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsJapanLevel1 { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Japan | https://en.wikipedia.org/wiki/Prefectures_of_Japan | https://en.wikipedia.org/wiki/ISO_3166-2:JP
    static let aichi = get("23")
    static let akita = get("05")
    static let aomori = get("02")
    static let chiba = get("12")
    static let ehime = get("38")
    static let fukui = get("18")
    static let fukuoka = get("40")
    static let fukushima = get("07")
    static let gifu = get("21")
    static let gunma = get("10")
    static let hiroshima = get("34")
    static let hokkaidô = get("01")
    static let hyôgo = get("28")
    static let ibaraki = get("08")
    static let ishikawa = get("17")
    static let iwate = get("03")
    static let kagawa = get("37")
    static let kagoshima = get("46")
    static let kanagawa = get("14")
    static let kochi = get("39")
    static let kumamoto = get("43")
    static let kyoto = get("26")
    static let mie = get("24")
    static let miyagi = get("04")
    static let miyazaki = get("45")
    static let nagano = get("20")
    static let nagasaki = get("42")
    static let nara = get("29")
    static let niigata = get("15")
    static let oita = get("44")
    static let okayama = get("33")
    static let okinawa = get("47")
    static let osaka = get("27")
    static let saga = get("41")
    static let saitama = get("11")
    static let shiga = get("25")
    static let shimane = get("32")
    static let shizuoka = get("22")
    static let tochigi = get("09")
    static let tokushima = get("36")
    static let tokyo = get("13")
    static let tottori = get("31")
    static let toyama = get("16")
    static let wakayama = get("30")
    static let yamagata = get("06")
    static let yamaguchi = get("35")
    static let yamanashi = get("19")
}
