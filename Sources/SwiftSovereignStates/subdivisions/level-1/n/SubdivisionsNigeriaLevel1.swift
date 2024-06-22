//
//  SubdivisionsNigeriaLevel1.swift
//  
//
//  Created by Evan Anderson on 9/21/22.
//

import Foundation

public typealias SubdivisionsNigeriaLevel1 = Locale.Region.Subdivision.Level1.Nigeria

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.nigeria, allSameType: false, type: Locale.Region.SubdivisionType.state)
    struct Nigeria : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
                case .abuja:
                    return Locale.Region.SubdivisionType.federalTerritory
                default:
                    return Locale.Region.SubdivisionType.state
            }
        }
    }
}

public extension SubdivisionsNigeriaLevel1 { // https://en.wikipedia.org/wiki/States_of_Nigeria | https://en.wikipedia.org/wiki/ISO_3166-2:NG
    static let abia = get("AB")
    static let adamawa = get("AD")
    static let akwa_ibom = get("AK")
    static let anambra = get("AN")
    static let bauchi = get("BA")
    static let bayelsa = get("BY")
    static let benue = get("BE")
    static let borno = get("BO")
    static let cross_river = get("CR")
    static let delta = get("DE")
    static let ebonyi = get("EB")
    static let edo = get("ED")
    static let ekiti = get("EK")
    static let enugu = get("EN")
    static let gombe = get("GO")
    static let imo = get("IM")
    static let jigawa = get("JI")
    static let kaduna = get("KD")
    static let kano = get("KN")
    static let katsina = get("KT")
    static let kebbi = get("KE")
    static let kogi = get("KO")
    static let kwara = get("KW")
    static let lagos = get("LA")
    static let nasarawa = get("NA")
    static let niger = get("NI")
    static let ogun = get("OG")
    static let ondo = get("ON")
    static let osun = get("OS")
    static let oyo = get("OY")
    static let plateau = get("PL")
    static let rivers = get("RI")
    static let sokoto = get("SO")
    static let taraba = get("TA")
    static let yobe = get("YO")
    static let zamfara = get("ZA")

    static let abuja = get("FC")
}