//
//  SubdivisionsBhutanLevel1.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public typealias SubdivisionsBhutanLevel1 = Locale.Region.Subdivision.Level1.Bhutan

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.bhutan, allSameType: true, type: Locale.Region.SubdivisionType.district)
    struct Bhutan : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsBhutanLevel1 { // https://en.wikipedia.org/wiki/Districts_of_Bhutan | https://en.wikipedia.org/wiki/ISO_3166-2:BT
    static let bumthang = get("33")
    static let chhukha = get("12")
    static let dagana = get("22")
    static let gasa = get("GA")
    static let haa = get("13")
    static let lhuentse = get("44")
    static let mongar = get("42")
    static let paro = get("11")
    static let pemaGatshel = get("43")
    static let punakha = get("23")
    static let samdrupJongkhar = get("45")
    static let samtse = get("14")
    static let sarpang = get("31")
    static let thimphu = get("15")
    static let trashiYangtse = get("TY")
    static let trashigang = get("41")
    static let trongsa = get("32")
    static let tsirang = get("21")
    static let wangduePhodrang = get("24")
    static let zhemgang = get("34")
}
