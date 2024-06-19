//
//  SubdivisionsTunisiaLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsTunisiaLevel1 = Locale.Region.Subdivision.Level1.Tunisia

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.tunisia, allSameType: true, type: Locale.Region.SubdivisionType.governorate)
    struct Tunisia : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsTunisiaLevel1 { // https://en.wikipedia.org/wiki/Governorates_of_Tunisia | https://en.wikipedia.org/wiki/ISO_3166-2:TN
    static let ariana = get("11")
    static let beja = get("31")
    static let ben_arous = get("13")
    static let bizerte = get("23")
    static let gabes = get("81")
    static let gafsa = get("71")
    static let jendouba = get("32")
    static let kairouan = get("41")
    static let kasserine = get("42")
    static let kebili = get("73")
    static let kef = get("33")
    static let mahdia = get("53")
    static let manouba = get("14")
    static let medenine = get("82")
    static let monastir = get("52")
    static let nabeul = get("21")
    static let sfax = get("61")
    static let sidi_bouzid = get("43")
    static let siliana = get("34")
    static let sousse = get("51")
    static let tataouine = get("83")
    static let tozeur = get("72")
    static let tunis = get("11")
    static let zaghouan = get("22")
}
