//
//  SubdivisionsUnitedStatesLevel1.swift
//  
//
//  Created by Evan Anderson on 6/16/22.
//

import Foundation

public typealias SubdivisionsUnitedStatesLevel1 = Locale.Region.Subdivision.Level1.UnitedStates

public extension Locale.Region.Subdivision.Level1 {
    struct UnitedStates : Locale.Region.Subdivision.Level1Protocol {
        public var region : Locale.Region { Locale.Region.unitedStates }
        public let identifier:String

        public init(_ identifier: String) {
            self.identifier = identifier
        }

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .americanSamoa,
                    .puertoRico,
                    .guam,
                    .northernMarianaIslands,
                    .unitedStatesVirginIslands:
                return Locale.Region.SubdivisionType.territory
            case .washingtonDC:
                return Locale.Region.SubdivisionType.federalDistrict
            case .marshallIslands,
                    .micronesia,
                    .palau:
                return Locale.Region.SubdivisionType.freelyAssociatedState
            default:
                return Locale.Region.SubdivisionType.state
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsUnitedStatesLevel1 { // https://en.wikipedia.org/wiki/List_of_states_and_territories_of_the_United_States
    static let alabama = get("AL")
    static let alaska = get("AK")
    static let arizona = get("AZ")
    static let arkansas = get("AR")
    static let california = get("CA")
    static let colorado = get("CO")
    static let connecticut = get("CT")
    static let delaware = get("DE")
    static let florida = get("FL")
    static let georgia = get("GA")
    static let hawaii = get("HI")
    static let idaho = get("ID")
    static let illinois = get("IL")
    static let indiana = get("IN")
    static let iowa = get("IA")
    static let kansas = get("KS")
    static let kentucky = get("KY")
    static let louisiana = get("LA")
    static let maine = get("ME")
    static let maryland = get("MD")
    static let massachusetts = get("MA")
    static let michigan = get("MI")
    static let minnesota = get("MN")
    static let mississippi = get("MS")
    static let missouri = get("MO")
    static let montana = get("MT")
    static let nebraska = get("NE")
    static let nevada = get("NV")
    static let newHampshire = get("NH")
    static let newJersey = get("NJ")
    static let newMexico = get("NM")
    static let newYork = get("NY")
    static let northCarolina = get("NC")
    static let northDakota = get("ND")
    static let ohio = get("OH")
    static let oklahoma = get("OK")
    static let oregon = get("OR")
    static let pennsylvania = get("PA")
    static let rhodeIsland = get("RI")
    static let southCarolina = get("SC")
    static let southDakota = get("SD")
    static let tennessee = get("TN")
    static let texas = get("TX")
    static let utah = get("UT")
    static let vermont = get("VT")
    static let virginia = get("VA")
    static let washington = get("WA")
    static let westVirginia = get("WV")
    static let wisconsin = get("WI")
    static let wyoming = get("WY")

    static let washingtonDC = get("DC")
    static let unitedStatesVirginIslands = get("VI")

    static let americanSamoa = get(Locale.Region.americanSamoa.identifier)
    static let puertoRico = get(Locale.Region.puertoRico.identifier)
    static let guam = get(Locale.Region.guam.identifier)
    static let northernMarianaIslands = get(Locale.Region.northernMarianaIslands.identifier)
    
    static let marshallIslands = get(Locale.Region.marshallIslands.identifier)
    static let micronesia = get(Locale.Region.micronesia.identifier)
    static let palau = get(Locale.Region.palau.identifier)
}

// MARK: Neighbors
public extension SubdivisionsUnitedStatesLevel1 {
    var neighbors : [any Locale.Region.Subdivision.Level1Protocol] {
        switch self {
        case .arizona:
            return [
                SubdivisionsUnitedStatesLevel1.nevada, SubdivisionsUnitedStatesLevel1.utah, SubdivisionsUnitedStatesLevel1.colorado, SubdivisionsUnitedStatesLevel1.newMexico, SubdivisionsUnitedStatesLevel1.california,
                SubdivisionsMexicoLevel1.sonora
            ]
        case .arkansas: return [SubdivisionsUnitedStatesLevel1.missouri, SubdivisionsUnitedStatesLevel1.tennessee, SubdivisionsUnitedStatesLevel1.mississippi, SubdivisionsUnitedStatesLevel1.louisiana, SubdivisionsUnitedStatesLevel1.texas, SubdivisionsUnitedStatesLevel1.oklahoma]
        case .alabama: return [SubdivisionsUnitedStatesLevel1.tennessee, SubdivisionsUnitedStatesLevel1.georgia, SubdivisionsUnitedStatesLevel1.florida, SubdivisionsUnitedStatesLevel1.mississippi]
        case .alaska: return [SubdivisionsCanadaLevel1.yukon, SubdivisionsCanadaLevel1.britishColumbia]
        case .california:
            return [
                SubdivisionsUnitedStatesLevel1.oregon, SubdivisionsUnitedStatesLevel1.nevada, SubdivisionsUnitedStatesLevel1.arizona,
                SubdivisionsMexicoLevel1.bajaCalifornia
            ]
        case .colorado: return [SubdivisionsUnitedStatesLevel1.wyoming, SubdivisionsUnitedStatesLevel1.nebraska, SubdivisionsUnitedStatesLevel1.kansas, SubdivisionsUnitedStatesLevel1.oklahoma, SubdivisionsUnitedStatesLevel1.newMexico, SubdivisionsUnitedStatesLevel1.arizona, SubdivisionsUnitedStatesLevel1.utah]
        case .connecticut: return [SubdivisionsUnitedStatesLevel1.massachusetts, SubdivisionsUnitedStatesLevel1.rhodeIsland, SubdivisionsUnitedStatesLevel1.newYork]
        case .delaware: return [SubdivisionsUnitedStatesLevel1.pennsylvania, SubdivisionsUnitedStatesLevel1.newJersey, SubdivisionsUnitedStatesLevel1.maryland]
        case .kansas: return [SubdivisionsUnitedStatesLevel1.nebraska, SubdivisionsUnitedStatesLevel1.missouri, SubdivisionsUnitedStatesLevel1.oklahoma, SubdivisionsUnitedStatesLevel1.colorado]
        case .florida: return [SubdivisionsUnitedStatesLevel1.alabama, SubdivisionsUnitedStatesLevel1.georgia]
        case .georgia: return [SubdivisionsUnitedStatesLevel1.tennessee, SubdivisionsUnitedStatesLevel1.northCarolina, SubdivisionsUnitedStatesLevel1.southCarolina, SubdivisionsUnitedStatesLevel1.florida, SubdivisionsUnitedStatesLevel1.alabama]
        case .idaho:
            return [
                SubdivisionsUnitedStatesLevel1.montana, SubdivisionsUnitedStatesLevel1.wyoming, SubdivisionsUnitedStatesLevel1.utah, SubdivisionsUnitedStatesLevel1.nevada, SubdivisionsUnitedStatesLevel1.oregon, SubdivisionsUnitedStatesLevel1.washington,
                SubdivisionsCanadaLevel1.britishColumbia
            ]
        case .illinois: return [SubdivisionsUnitedStatesLevel1.wisconsin, SubdivisionsUnitedStatesLevel1.michigan, SubdivisionsUnitedStatesLevel1.indiana, SubdivisionsUnitedStatesLevel1.kentucky, SubdivisionsUnitedStatesLevel1.missouri, SubdivisionsUnitedStatesLevel1.iowa]
        case .indiana: return [SubdivisionsUnitedStatesLevel1.illinois, SubdivisionsUnitedStatesLevel1.michigan, SubdivisionsUnitedStatesLevel1.ohio, SubdivisionsUnitedStatesLevel1.kentucky]
        case .iowa: return [SubdivisionsUnitedStatesLevel1.minnesota, SubdivisionsUnitedStatesLevel1.wisconsin, SubdivisionsUnitedStatesLevel1.illinois, SubdivisionsUnitedStatesLevel1.missouri, SubdivisionsUnitedStatesLevel1.nebraska, SubdivisionsUnitedStatesLevel1.southDakota]
        case .kentucky: return [SubdivisionsUnitedStatesLevel1.illinois, SubdivisionsUnitedStatesLevel1.indiana, SubdivisionsUnitedStatesLevel1.ohio, SubdivisionsUnitedStatesLevel1.westVirginia, SubdivisionsUnitedStatesLevel1.virginia, SubdivisionsUnitedStatesLevel1.tennessee, SubdivisionsUnitedStatesLevel1.missouri]
        case .louisiana: return [SubdivisionsUnitedStatesLevel1.arkansas, SubdivisionsUnitedStatesLevel1.mississippi, SubdivisionsUnitedStatesLevel1.texas]
        case .maine:
            return [
                SubdivisionsUnitedStatesLevel1.newHampshire,
                SubdivisionsCanadaLevel1.quebec, SubdivisionsCanadaLevel1.newBrunswick
            ]
        case .maryland: return [SubdivisionsUnitedStatesLevel1.pennsylvania, SubdivisionsUnitedStatesLevel1.delaware, SubdivisionsUnitedStatesLevel1.virginia, SubdivisionsUnitedStatesLevel1.westVirginia]
        case .massachusetts: return [SubdivisionsUnitedStatesLevel1.vermont, SubdivisionsUnitedStatesLevel1.newHampshire, SubdivisionsUnitedStatesLevel1.rhodeIsland, SubdivisionsUnitedStatesLevel1.connecticut, SubdivisionsUnitedStatesLevel1.newYork]
        case .michigan:
            return [
                SubdivisionsUnitedStatesLevel1.ohio, SubdivisionsUnitedStatesLevel1.indiana, SubdivisionsUnitedStatesLevel1.illinois, SubdivisionsUnitedStatesLevel1.wisconsin, SubdivisionsUnitedStatesLevel1.minnesota,
                SubdivisionsCanadaLevel1.ontario
            ]
        case .minnesota:
            return [
                SubdivisionsUnitedStatesLevel1.michigan, SubdivisionsUnitedStatesLevel1.wisconsin, SubdivisionsUnitedStatesLevel1.iowa, SubdivisionsUnitedStatesLevel1.southDakota, SubdivisionsUnitedStatesLevel1.northDakota,
                SubdivisionsCanadaLevel1.manitoba, SubdivisionsCanadaLevel1.ontario
            ]
        case .mississippi: return [SubdivisionsUnitedStatesLevel1.arkansas, SubdivisionsUnitedStatesLevel1.tennessee, SubdivisionsUnitedStatesLevel1.alabama, SubdivisionsUnitedStatesLevel1.louisiana]
        case .missouri: return [SubdivisionsUnitedStatesLevel1.iowa, SubdivisionsUnitedStatesLevel1.illinois, SubdivisionsUnitedStatesLevel1.kentucky, SubdivisionsUnitedStatesLevel1.tennessee, SubdivisionsUnitedStatesLevel1.arkansas, SubdivisionsUnitedStatesLevel1.oklahoma, SubdivisionsUnitedStatesLevel1.kansas, SubdivisionsUnitedStatesLevel1.nebraska]
        case .montana:
            return [
                SubdivisionsUnitedStatesLevel1.northDakota, SubdivisionsUnitedStatesLevel1.southDakota, SubdivisionsUnitedStatesLevel1.wyoming, SubdivisionsUnitedStatesLevel1.idaho,
                SubdivisionsCanadaLevel1.britishColumbia, SubdivisionsCanadaLevel1.alberta, SubdivisionsCanadaLevel1.saskatchewan
            ]
        case .nebraska: return [SubdivisionsUnitedStatesLevel1.southDakota, SubdivisionsUnitedStatesLevel1.iowa, SubdivisionsUnitedStatesLevel1.missouri, SubdivisionsUnitedStatesLevel1.kansas, SubdivisionsUnitedStatesLevel1.colorado, SubdivisionsUnitedStatesLevel1.wyoming]
        case .nevada: return [SubdivisionsUnitedStatesLevel1.oregon, SubdivisionsUnitedStatesLevel1.idaho, SubdivisionsUnitedStatesLevel1.utah, SubdivisionsUnitedStatesLevel1.arizona, SubdivisionsUnitedStatesLevel1.california]
        case .newJersey: return [SubdivisionsUnitedStatesLevel1.newYork, SubdivisionsUnitedStatesLevel1.delaware, SubdivisionsUnitedStatesLevel1.pennsylvania]
        case .newMexico:
            return [
                SubdivisionsUnitedStatesLevel1.colorado, SubdivisionsUnitedStatesLevel1.oklahoma, SubdivisionsUnitedStatesLevel1.texas, SubdivisionsUnitedStatesLevel1.arizona, SubdivisionsUnitedStatesLevel1.utah,
                SubdivisionsMexicoLevel1.chihuahua, SubdivisionsMexicoLevel1.sonora
            ]
        case .newHampshire:
            return [
                SubdivisionsUnitedStatesLevel1.maine, SubdivisionsUnitedStatesLevel1.massachusetts, SubdivisionsUnitedStatesLevel1.vermont,
                SubdivisionsCanadaLevel1.quebec
            ]
        case .newYork:
            return [
                SubdivisionsUnitedStatesLevel1.vermont, SubdivisionsUnitedStatesLevel1.massachusetts, SubdivisionsUnitedStatesLevel1.connecticut, SubdivisionsUnitedStatesLevel1.newJersey, SubdivisionsUnitedStatesLevel1.pennsylvania,
                SubdivisionsCanadaLevel1.ontario
            ]
        case .northCarolina: return [SubdivisionsUnitedStatesLevel1.virginia, SubdivisionsUnitedStatesLevel1.southCarolina, SubdivisionsUnitedStatesLevel1.georgia, SubdivisionsUnitedStatesLevel1.tennessee]
        case .northDakota:
            return [
                SubdivisionsUnitedStatesLevel1.minnesota, SubdivisionsUnitedStatesLevel1.southDakota, SubdivisionsUnitedStatesLevel1.montana,
                SubdivisionsCanadaLevel1.saskatchewan, SubdivisionsCanadaLevel1.manitoba
            ]
        case .ohio:
            return [
                SubdivisionsUnitedStatesLevel1.michigan, SubdivisionsUnitedStatesLevel1.pennsylvania, SubdivisionsUnitedStatesLevel1.westVirginia, SubdivisionsUnitedStatesLevel1.kentucky, SubdivisionsUnitedStatesLevel1.indiana,
                SubdivisionsCanadaLevel1.ontario
            ]
        case .oklahoma: return [SubdivisionsUnitedStatesLevel1.colorado, SubdivisionsUnitedStatesLevel1.kansas, SubdivisionsUnitedStatesLevel1.missouri, SubdivisionsUnitedStatesLevel1.arkansas, SubdivisionsUnitedStatesLevel1.texas, SubdivisionsUnitedStatesLevel1.newMexico]
        case .oregon: return [SubdivisionsUnitedStatesLevel1.washington, SubdivisionsUnitedStatesLevel1.idaho, SubdivisionsUnitedStatesLevel1.nevada, SubdivisionsUnitedStatesLevel1.california]
        case .pennsylvania:
            return [
                SubdivisionsUnitedStatesLevel1.newYork, SubdivisionsUnitedStatesLevel1.newJersey, SubdivisionsUnitedStatesLevel1.delaware, SubdivisionsUnitedStatesLevel1.maryland, SubdivisionsUnitedStatesLevel1.westVirginia, SubdivisionsUnitedStatesLevel1.ohio,
                SubdivisionsCanadaLevel1.ontario
            ]
        case .rhodeIsland: return [SubdivisionsUnitedStatesLevel1.massachusetts, SubdivisionsUnitedStatesLevel1.connecticut]
        case .southCarolina: return [SubdivisionsUnitedStatesLevel1.northCarolina, SubdivisionsUnitedStatesLevel1.georgia]
        case .southDakota: return [SubdivisionsUnitedStatesLevel1.northDakota, SubdivisionsUnitedStatesLevel1.minnesota, SubdivisionsUnitedStatesLevel1.iowa, SubdivisionsUnitedStatesLevel1.nebraska, SubdivisionsUnitedStatesLevel1.wyoming, SubdivisionsUnitedStatesLevel1.montana]
        case .tennessee: return [SubdivisionsUnitedStatesLevel1.kentucky, SubdivisionsUnitedStatesLevel1.virginia, SubdivisionsUnitedStatesLevel1.northCarolina, SubdivisionsUnitedStatesLevel1.georgia, SubdivisionsUnitedStatesLevel1.alabama, SubdivisionsUnitedStatesLevel1.mississippi, SubdivisionsUnitedStatesLevel1.arkansas, SubdivisionsUnitedStatesLevel1.missouri]
        case .texas:
            return [
                SubdivisionsUnitedStatesLevel1.newMexico, SubdivisionsUnitedStatesLevel1.oklahoma, SubdivisionsUnitedStatesLevel1.arkansas, SubdivisionsUnitedStatesLevel1.louisiana,
                SubdivisionsMexicoLevel1.tamaulipas, SubdivisionsMexicoLevel1.coahuila, SubdivisionsMexicoLevel1.chihuahua
            ]
        case .utah: return [SubdivisionsUnitedStatesLevel1.idaho, SubdivisionsUnitedStatesLevel1.wyoming, SubdivisionsUnitedStatesLevel1.colorado, SubdivisionsUnitedStatesLevel1.newMexico, SubdivisionsUnitedStatesLevel1.arizona, SubdivisionsUnitedStatesLevel1.nevada]
        case .vermont:
            return [
                SubdivisionsUnitedStatesLevel1.newHampshire, SubdivisionsUnitedStatesLevel1.massachusetts, SubdivisionsUnitedStatesLevel1.newYork,
                SubdivisionsCanadaLevel1.quebec
            ]
        case .virginia: return [SubdivisionsUnitedStatesLevel1.kentucky, SubdivisionsUnitedStatesLevel1.westVirginia, SubdivisionsUnitedStatesLevel1.maryland, SubdivisionsUnitedStatesLevel1.northCarolina, SubdivisionsUnitedStatesLevel1.tennessee]
        case .washington:
            return [
                SubdivisionsUnitedStatesLevel1.idaho, SubdivisionsUnitedStatesLevel1.oregon,
                SubdivisionsCanadaLevel1.britishColumbia
            ]
        case .westVirginia: return [SubdivisionsUnitedStatesLevel1.ohio, SubdivisionsUnitedStatesLevel1.pennsylvania, SubdivisionsUnitedStatesLevel1.maryland, SubdivisionsUnitedStatesLevel1.virginia, SubdivisionsUnitedStatesLevel1.kentucky]
        case .wisconsin: return [SubdivisionsUnitedStatesLevel1.minnesota, SubdivisionsUnitedStatesLevel1.michigan, SubdivisionsUnitedStatesLevel1.illinois, SubdivisionsUnitedStatesLevel1.iowa]
        case .wyoming: return [SubdivisionsUnitedStatesLevel1.montana, SubdivisionsUnitedStatesLevel1.southDakota, SubdivisionsUnitedStatesLevel1.nebraska, SubdivisionsUnitedStatesLevel1.colorado, SubdivisionsUnitedStatesLevel1.utah, SubdivisionsUnitedStatesLevel1.idaho]
        default: return []
        }
    }
}

// MARK: Zip Code Prefix
public extension SubdivisionsUnitedStatesLevel1 {
    var zipCodePrefix : Int { // https://en.wikipedia.org/wiki/ZIP_Code
        switch self {
        case .connecticut, .massachusetts, .maine, .newHampshire, .newJersey, .puertoRico,. rhodeIsland, .vermont, .unitedStatesVirginIslands:
            return 0
        case .delaware, .newYork, .pennsylvania:
            return 1
        case .washingtonDC, .maryland, .northCarolina, .southCarolina, .virginia, .westVirginia:
            return 2
        case .alabama, .florida, .georgia, .mississippi, .tennessee:
            return 3
        case .indiana, .kentucky, .michigan, .ohio:
            return 4
        case .iowa, .minnesota, .montana, .northDakota, .southDakota, .wisconsin:
            return 5
        case .illinois, .kansas, .missouri, .nebraska:
            return 6
        case .arkansas, .louisiana, .oklahoma, .texas:
            return 7
        case .arizona, .colorado, .idaho, .newMexico, .nevada, .utah, .wyoming:
            return 8
        case .alaska, .americanSamoa, .california, .guam, .hawaii, .marshallIslands, .micronesia, .northernMarianaIslands, .oregon, .palau, .washington:
            return 9
        default:
            return -1
        }
    }
}