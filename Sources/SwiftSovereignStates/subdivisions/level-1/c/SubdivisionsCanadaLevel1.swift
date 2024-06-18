//
//  SubdivisionsCanadaLevel1.swift
//  
//
//  Created by Evan Anderson on 6/21/22.
//

import Foundation

public extension Locale.Region.Subdivision {
    protocol Canada : Locale.Region.Subdivision.Level1Protocol {
    }
}
public extension Locale.Region.Subdivision.Canada {
    var region : Locale.Region { Locale.Region.canada }
}

public enum SubdivisionsCanadaLevel1 : String, Locale.Region.Subdivision.Canada { // https://en.wikipedia.org/wiki/Provinces_and_territories_of_Canada
    case alberta
    case britishColumbia
    case manitoba
    case newBrunswick
    case newfoundlandLabrador
    case novaScotia
    case ontario
    case princeEdwardIsland
    case quebec
    case saskatchewan
    
    case northwestTerritories
    case nunavut
    case yukon
    
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
    
    public var identifier : String {
        switch self {
        case .alberta: return "AB"
        case .britishColumbia: return "BC"
        case .manitoba: return "MB"
        case .newBrunswick: return "NB"
        case .newfoundlandLabrador: return "NL"
        case .northwestTerritories: return "NT"
        case .novaScotia: return "NS"
        case .nunavut: return "NU"
        case .ontario: return "ON"
        case .princeEdwardIsland: return "PE"
        case .quebec: return "QC"
        case .saskatchewan: return "SK"
        case .yukon: return "YK"
        }
    }
    
    public var neighbors : [any Locale.Region.Subdivision.Level1Protocol] {
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
        }
    }
}
