//
//  SubdivisionsPalestineLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsPalestineLevel1 = Locale.Region.Subdivision.Level1.Palestine

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.palestine, allSameType: true, type: Locale.Region.SubdivisionType.governorate)
    struct Palestine : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsPalestineLevel1 { // https://en.wikipedia.org/wiki/Governorates_of_Palestine | https://en.wikipedia.org/wiki/ISO_3166-2:PS
    static let bethlehem = get("BTH")
    static let deirAlBalah = get("DEB")
    static let gaza = get("GZA")
    static let hebron = get("HBN")
    static let jenin = get("JEN")
    static let jericho = get("JRH")
    static let jerusalem = get("JEM")
    static let khanYunis = get("KYS")
    static let nablus = get("NBS")
    static let northGaza = get("NGZ")
    static let qalqilya = get("QQA")
    static let rafah = get("RFH")
    static let ramallahAlBireh = get("RBH")
    static let salfit = get("SLT")
    static let tubas = get("TBS")
    static let tulkarm = get("TKM")
}
