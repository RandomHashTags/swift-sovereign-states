//
//  SubdivisionsCanadaLevel1.swift
//  
//
//  Created by Evan Anderson on 6/21/22.
//

import Foundation

public typealias SubdivisionsCanadaLevel1 = Locale.Region.Subdivision.Level1.Canada

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.canada, allSameType: false, type: Locale.Region.SubdivisionType.province)
    struct Canada : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .northwestTerritories,
                    .nunavut,
                    .yukon:
                return Locale.Region.SubdivisionType.territory
            default:
                return Locale.Region.SubdivisionType.province
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsCanadaLevel1 { // https://en.wikipedia.org/wiki/Provinces_and_territories_of_Canada | https://en.wikipedia.org/wiki/ISO_3166-2:CA
    static let alberta = get("AB")
    static let britishColumbia = get("BC")
    static let manitoba = get("MB")
    static let newBrunswick = get("NB")
    static let newfoundlandLabrador = get("NL")
    static let novaScotia = get("NS")
    static let ontario = get("ON")
    static let princeEdwardIsland = get("PE")
    static let quebec = get("QC")
    static let saskatchewan = get("SK")

    static let northwestTerritories = get("NT")
    static let nunavut = get("NU")
    static let yukon = get("YK")
}

// MARK: Neighbors
public extension SubdivisionsCanadaLevel1 {
    var neighbors : [any Locale.Region.Subdivision.Level1Protocol] {
        switch self {
        case .alberta: return [SubdivisionsCanadaLevel1.northwestTerritories, SubdivisionsCanadaLevel1.saskatchewan, SubdivisionsCanadaLevel1.britishColumbia, SubdivisionsUnitedStatesLevel1.montana]
        case .britishColumbia:
            return [
                SubdivisionsCanadaLevel1.yukon, SubdivisionsCanadaLevel1.northwestTerritories, SubdivisionsCanadaLevel1.alberta,
                SubdivisionsUnitedStatesLevel1.montana, SubdivisionsUnitedStatesLevel1.idaho, SubdivisionsUnitedStatesLevel1.washington, SubdivisionsUnitedStatesLevel1.alaska
            ]
        case .manitoba:
            return [
                SubdivisionsCanadaLevel1.nunavut, SubdivisionsCanadaLevel1.ontario, SubdivisionsCanadaLevel1.saskatchewan, SubdivisionsCanadaLevel1.northwestTerritories,
                SubdivisionsUnitedStatesLevel1.minnesota, SubdivisionsUnitedStatesLevel1.northDakota
            ]
        case .newBrunswick:
            return [
                SubdivisionsCanadaLevel1.quebec, SubdivisionsCanadaLevel1.princeEdwardIsland, SubdivisionsCanadaLevel1.novaScotia,
                SubdivisionsUnitedStatesLevel1.maine
            ]
        case .newfoundlandLabrador: return [SubdivisionsCanadaLevel1.quebec]
        case .northwestTerritories: return [SubdivisionsCanadaLevel1.nunavut, SubdivisionsCanadaLevel1.manitoba, SubdivisionsCanadaLevel1.saskatchewan, SubdivisionsCanadaLevel1.alberta, SubdivisionsCanadaLevel1.britishColumbia, SubdivisionsCanadaLevel1.yukon]
        case .novaScotia: return [SubdivisionsCanadaLevel1.newBrunswick, SubdivisionsCanadaLevel1.princeEdwardIsland]
        case .nunavut: return [SubdivisionsCanadaLevel1.manitoba, SubdivisionsCanadaLevel1.saskatchewan, SubdivisionsCanadaLevel1.northwestTerritories]
        case .ontario:
            return [
                SubdivisionsCanadaLevel1.quebec, SubdivisionsCanadaLevel1.manitoba,
                SubdivisionsUnitedStatesLevel1.newYork, SubdivisionsUnitedStatesLevel1.pennsylvania, SubdivisionsUnitedStatesLevel1.ohio, SubdivisionsUnitedStatesLevel1.michigan, SubdivisionsUnitedStatesLevel1.minnesota
            ]
        case .princeEdwardIsland:
            return [ SubdivisionsCanadaLevel1.novaScotia, SubdivisionsCanadaLevel1.newBrunswick ]
        case .quebec:
            return [
                SubdivisionsCanadaLevel1.newfoundlandLabrador, SubdivisionsCanadaLevel1.newBrunswick, SubdivisionsCanadaLevel1.ontario,
                SubdivisionsUnitedStatesLevel1.maine, SubdivisionsUnitedStatesLevel1.newHampshire, SubdivisionsUnitedStatesLevel1.vermont, SubdivisionsUnitedStatesLevel1.newYork
            ]
        case .saskatchewan:
            return [
                SubdivisionsCanadaLevel1.northwestTerritories, SubdivisionsCanadaLevel1.nunavut, SubdivisionsCanadaLevel1.manitoba, SubdivisionsCanadaLevel1.alberta,
                SubdivisionsUnitedStatesLevel1.northDakota, SubdivisionsUnitedStatesLevel1.montana
            ]
        case .yukon:
            return [
                SubdivisionsCanadaLevel1.northwestTerritories, SubdivisionsCanadaLevel1.britishColumbia,
                SubdivisionsUnitedStatesLevel1.alaska
            ]
        default:
            return []
        }
    }
}