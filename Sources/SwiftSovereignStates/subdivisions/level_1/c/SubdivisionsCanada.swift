//
//  SubdivisionsCanada.swift
//  
//
//  Created by Evan Anderson on 6/21/22.
//

import Foundation

public enum SubdivisionsCanada : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_and_territories_of_Canada
    case alberta
    case british_columbia
    case manitoba
    case new_brunswick
    case newfoundland_and_labrador
    case nova_scotia
    case ontario
    case prince_edward_island
    case quebec
    case saskatchewan
    
    case northwest_territories
    case nunavut
    case yukon
    
    public func getCountry() -> Country {
        return Country.canada
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        switch self {
        case .northwest_territories,
                .nunavut,
                .yukon:
            return .territories
        default:
            return SovereignStateSubdivisionType.provinces
        }
    }
    
    public func getISOAlpha2() -> String? {
        switch self {
        case .alberta: return "AB"
        case .british_columbia: return "BC"
        case .manitoba: return "MB"
        case .new_brunswick: return "NB"
        case .newfoundland_and_labrador: return "NL"
        case .northwest_territories: return "NT"
        case .nova_scotia: return "NS"
        case .nunavut: return "NU"
        case .ontario: return "ON"
        case .prince_edward_island: return "PE"
        case .quebec: return "QC"
        case .saskatchewan: return "SK"
        case .yukon: return "YK"
        }
    }
    
    public func getFlagURLWikipediaSVGID() -> String? {
        switch self {
        case .alberta: return "f/f5/Flag_of_Alberta"
        case .british_columbia: return "b/b8/Flag_of_British_Columbia"
        case .manitoba: return "c/c4/Flag_of_Manitoba"
        case .new_brunswick: return "f/fb/Flag_of_New_Brunswick"
        case .newfoundland_and_labrador: return "d/dd/Flag_of_Newfoundland_and_Labrador"
        case .nova_scotia: return "c/c0/Flag_of_Nova_Scotia"
        case .ontario: return "8/88/Flag_of_Ontario"
        case .prince_edward_island: return "d/d7/Flag_of_Prince_Edward_Island"
        case .quebec: return "5/5f/Flag_of_Quebec"
        case .saskatchewan: return "b/bb/Flag_of_Saskatchewan"

        case .northwest_territories: return "c/c1/Flag_of_the_Northwest_Territories"
        case .nunavut: return "9/90/Flag_of_Nunavut"
        case .yukon: return "6/69/Flag_of_Yukon"
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .newfoundland_and_labrador,
                .northwest_territories:
            return nil
        default:
            return "_" + getTypeSuffix()
        }
    }
    
    public func getNeighbors() -> [any SovereignStateSubdivision]? {
        switch self {
        case .alberta: return [SubdivisionsCanada.northwest_territories, SubdivisionsCanada.saskatchewan, SubdivisionsCanada.british_columbia, SubdivisionsUnitedStates.montana]
        case .british_columbia:
            return [
                SubdivisionsCanada.yukon, SubdivisionsCanada.northwest_territories, SubdivisionsCanada.alberta,
                SubdivisionsUnitedStates.montana, SubdivisionsUnitedStates.idaho, SubdivisionsUnitedStates.washington, SubdivisionsUnitedStates.alaska
            ]
        case .manitoba:
            return [
                SubdivisionsCanada.nunavut, SubdivisionsCanada.ontario, SubdivisionsCanada.saskatchewan, SubdivisionsCanada.northwest_territories,
                SubdivisionsUnitedStates.minnesota, SubdivisionsUnitedStates.north_dakota
            ]
        case .new_brunswick:
            return [
                SubdivisionsCanada.quebec, SubdivisionsCanada.prince_edward_island, SubdivisionsCanada.nova_scotia,
                SubdivisionsUnitedStates.maine
            ]
        case .newfoundland_and_labrador: return [SubdivisionsCanada.quebec]
        case .northwest_territories: return [SubdivisionsCanada.nunavut, SubdivisionsCanada.manitoba, SubdivisionsCanada.saskatchewan, SubdivisionsCanada.alberta, SubdivisionsCanada.british_columbia, SubdivisionsCanada.yukon]
        case .nova_scotia: return [SubdivisionsCanada.new_brunswick, SubdivisionsCanada.prince_edward_island]
        case .nunavut: return [SubdivisionsCanada.manitoba, SubdivisionsCanada.saskatchewan, SubdivisionsCanada.northwest_territories]
        case .ontario:
            return [
                SubdivisionsCanada.quebec, SubdivisionsCanada.manitoba,
                SubdivisionsUnitedStates.new_york, SubdivisionsUnitedStates.pennsylvania, SubdivisionsUnitedStates.ohio, SubdivisionsUnitedStates.michigan, SubdivisionsUnitedStates.minnesota
            ]
        case .prince_edward_island:
            return [ SubdivisionsCanada.nova_scotia, SubdivisionsCanada.new_brunswick ]
        case .quebec:
            return [
                SubdivisionsCanada.newfoundland_and_labrador, SubdivisionsCanada.new_brunswick, SubdivisionsCanada.ontario,
                SubdivisionsUnitedStates.maine, SubdivisionsUnitedStates.new_hampshire, SubdivisionsUnitedStates.vermont, SubdivisionsUnitedStates.new_york
            ]
        case .saskatchewan:
            return [
                SubdivisionsCanada.northwest_territories, SubdivisionsCanada.nunavut, SubdivisionsCanada.manitoba, SubdivisionsCanada.alberta,
                SubdivisionsUnitedStates.north_dakota, SubdivisionsUnitedStates.montana
            ]
        case .yukon:
            return [
                SubdivisionsCanada.northwest_territories, SubdivisionsCanada.british_columbia,
                SubdivisionsUnitedStates.alaska
            ]
        }
    }
    
    public func getCities() -> [any SovereignStateCity]? {
        switch self {
        case .quebec: return CitiesCanadaQuebec.allCases
        default: return nil
        }
    }
}
