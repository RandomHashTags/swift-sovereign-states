//
//  SubdivisionsBulgariaLevel1.swift
//  
//
//  Created by Evan Anderson on 6/21/22.
//

import Foundation

public typealias SubdivisionsBulgariaLevel1 = Locale.Region.Subdivision.Level1.Bulgaria

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.bulgaria, allSameType: true, type: Locale.Region.SubdivisionType.province)
    struct Bulgaria : Locale.Region.Subdivision.Level1Protocol {
    }
}

@SubdivisionCases
public extension SubdivisionsBulgariaLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Bulgaria | https://en.wikipedia.org/wiki/ISO_3166-2:BG
    static let blagoevgrad = get("01")
    static let burgas = get("02")
    static let dobrich = get("08")
    static let gabrovo = get("07")
    static let haskovo = get("26")
    static let kardzhali = get("09")
    static let kyustendil = get("10")
    static let lovech = get("11")
    static let montana = get("12")
    static let pazardzhik = get("13")
    static let pernik = get("14")
    static let pleven = get("15")
    static let plovdiv = get("16")
    static let razgrad = get("17")
    static let ruse = get("18")
    static let shumen = get("27")
    static let silistra = get("19")
    static let sliven = get("20")
    static let smolyan = get("21")
    static let sofia = get("23")
    static let sofiaCity = get("22")
    static let staraZagora = get("24")
    static let targovishte = get("25")
    static let varna = get("03")
    static let velikoTarnovo = get("04")
    static let vidin = get("05")
    static let vratsa = get("06")
    static let yambol = get("28")
}

// MARK: Neighbors
public extension SubdivisionsBulgariaLevel1 {
    var neighbors : [any Locale.Region.Subdivision.Level1Protocol] {
        switch self {
        case .blagoevgrad:
            return [SubdivisionsBulgariaLevel1.kyustendil, SubdivisionsBulgariaLevel1.sofia, SubdivisionsBulgariaLevel1.pazardzhik, SubdivisionsBulgariaLevel1.smolyan]
        case .burgas:
            return [SubdivisionsBulgariaLevel1.yambol, SubdivisionsBulgariaLevel1.sliven, SubdivisionsBulgariaLevel1.shumen, SubdivisionsBulgariaLevel1.varna]
        case .dobrich:
            return [SubdivisionsBulgariaLevel1.silistra, SubdivisionsBulgariaLevel1.shumen, SubdivisionsBulgariaLevel1.varna]
        case .gabrovo:
            return [SubdivisionsBulgariaLevel1.lovech, SubdivisionsBulgariaLevel1.velikoTarnovo, SubdivisionsBulgariaLevel1.staraZagora, SubdivisionsBulgariaLevel1.plovdiv]
        case .haskovo:
            return [SubdivisionsBulgariaLevel1.kardzhali, SubdivisionsBulgariaLevel1.plovdiv, SubdivisionsBulgariaLevel1.staraZagora, SubdivisionsBulgariaLevel1.sliven, SubdivisionsBulgariaLevel1.yambol]
        case .kardzhali:
            return [SubdivisionsBulgariaLevel1.smolyan, SubdivisionsBulgariaLevel1.plovdiv, SubdivisionsBulgariaLevel1.haskovo]
        case .kyustendil:
            return [SubdivisionsBulgariaLevel1.pernik, SubdivisionsBulgariaLevel1.sofia, SubdivisionsBulgariaLevel1.blagoevgrad]
        case .lovech:
            return [SubdivisionsBulgariaLevel1.vratsa, SubdivisionsBulgariaLevel1.pleven, SubdivisionsBulgariaLevel1.velikoTarnovo, SubdivisionsBulgariaLevel1.gabrovo, SubdivisionsBulgariaLevel1.staraZagora, SubdivisionsBulgariaLevel1.plovdiv, SubdivisionsBulgariaLevel1.sofia]
        case .montana:
            return [SubdivisionsBulgariaLevel1.vidin, SubdivisionsBulgariaLevel1.vratsa, SubdivisionsBulgariaLevel1.sofia]
        case .pazardzhik:
            return [SubdivisionsBulgariaLevel1.blagoevgrad, SubdivisionsBulgariaLevel1.sofia, SubdivisionsBulgariaLevel1.plovdiv, SubdivisionsBulgariaLevel1.smolyan]
        case .pernik:
            return [SubdivisionsBulgariaLevel1.kyustendil, SubdivisionsBulgariaLevel1.sofia, SubdivisionsBulgariaLevel1.sofiaCity]
        case .pleven:
            return [SubdivisionsBulgariaLevel1.vratsa, SubdivisionsBulgariaLevel1.lovech, SubdivisionsBulgariaLevel1.velikoTarnovo]
        case .plovdiv:
            return [SubdivisionsBulgariaLevel1.smolyan, SubdivisionsBulgariaLevel1.pazardzhik, SubdivisionsBulgariaLevel1.sofia, SubdivisionsBulgariaLevel1.lovech, SubdivisionsBulgariaLevel1.gabrovo, SubdivisionsBulgariaLevel1.staraZagora, SubdivisionsBulgariaLevel1.haskovo, SubdivisionsBulgariaLevel1.kardzhali]
        case .razgrad:
            return [SubdivisionsBulgariaLevel1.ruse, SubdivisionsBulgariaLevel1.silistra, SubdivisionsBulgariaLevel1.shumen, SubdivisionsBulgariaLevel1.targovishte]
        case .ruse:
            return [SubdivisionsBulgariaLevel1.velikoTarnovo, SubdivisionsBulgariaLevel1.targovishte, SubdivisionsBulgariaLevel1.razgrad, SubdivisionsBulgariaLevel1.silistra]
        case .shumen:
            return [SubdivisionsBulgariaLevel1.silistra, SubdivisionsBulgariaLevel1.dobrich, SubdivisionsBulgariaLevel1.varna, SubdivisionsBulgariaLevel1.burgas, SubdivisionsBulgariaLevel1.sliven, SubdivisionsBulgariaLevel1.targovishte, SubdivisionsBulgariaLevel1.razgrad]
        case .silistra:
            return [SubdivisionsBulgariaLevel1.ruse, SubdivisionsBulgariaLevel1.razgrad, SubdivisionsBulgariaLevel1.shumen, SubdivisionsBulgariaLevel1.dobrich]
        case .sliven:
            return [SubdivisionsBulgariaLevel1.yambol, SubdivisionsBulgariaLevel1.haskovo, SubdivisionsBulgariaLevel1.staraZagora, SubdivisionsBulgariaLevel1.velikoTarnovo, SubdivisionsBulgariaLevel1.targovishte, SubdivisionsBulgariaLevel1.shumen, SubdivisionsBulgariaLevel1.burgas]
        case .smolyan:
            return [SubdivisionsBulgariaLevel1.blagoevgrad, SubdivisionsBulgariaLevel1.pazardzhik, SubdivisionsBulgariaLevel1.plovdiv, SubdivisionsBulgariaLevel1.kardzhali]
        case .sofia:
            return [SubdivisionsBulgariaLevel1.pernik, SubdivisionsBulgariaLevel1.kyustendil, SubdivisionsBulgariaLevel1.blagoevgrad, SubdivisionsBulgariaLevel1.pazardzhik, SubdivisionsBulgariaLevel1.plovdiv, SubdivisionsBulgariaLevel1.lovech, SubdivisionsBulgariaLevel1.vratsa, SubdivisionsBulgariaLevel1.montana, SubdivisionsBulgariaLevel1.sofiaCity]
        case .sofiaCity:
            return [SubdivisionsBulgariaLevel1.pernik, SubdivisionsBulgariaLevel1.sofia]
        case .staraZagora:
            return [SubdivisionsBulgariaLevel1.haskovo, SubdivisionsBulgariaLevel1.plovdiv, SubdivisionsBulgariaLevel1.lovech, SubdivisionsBulgariaLevel1.gabrovo, SubdivisionsBulgariaLevel1.velikoTarnovo, SubdivisionsBulgariaLevel1.sliven, SubdivisionsBulgariaLevel1.yambol]
        case .targovishte:
            return [SubdivisionsBulgariaLevel1.ruse, SubdivisionsBulgariaLevel1.razgrad, SubdivisionsBulgariaLevel1.shumen, SubdivisionsBulgariaLevel1.sliven, SubdivisionsBulgariaLevel1.velikoTarnovo]
        case .varna:
            return [SubdivisionsBulgariaLevel1.dobrich, SubdivisionsBulgariaLevel1.shumen, SubdivisionsBulgariaLevel1.burgas]
        case .velikoTarnovo:
            return [SubdivisionsBulgariaLevel1.pleven, SubdivisionsBulgariaLevel1.lovech, SubdivisionsBulgariaLevel1.gabrovo, SubdivisionsBulgariaLevel1.staraZagora, SubdivisionsBulgariaLevel1.sliven, SubdivisionsBulgariaLevel1.targovishte, SubdivisionsBulgariaLevel1.ruse]
        case .vidin:
            return [SubdivisionsBulgariaLevel1.montana]
        case .vratsa:
            return [SubdivisionsBulgariaLevel1.montana, SubdivisionsBulgariaLevel1.sofia, SubdivisionsBulgariaLevel1.lovech, SubdivisionsBulgariaLevel1.pleven]
        case .yambol:
            return [SubdivisionsBulgariaLevel1.haskovo, SubdivisionsBulgariaLevel1.staraZagora, SubdivisionsBulgariaLevel1.sliven, SubdivisionsBulgariaLevel1.burgas]
        default:
            return []
        }
    }
}
