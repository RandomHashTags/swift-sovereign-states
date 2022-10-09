//
//  SubdivisionsMadagascar.swift
//  
//
//  Created by Evan Anderson on 7/29/22.
//

import Foundation

public enum SubdivisionsMadagascar : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Madagascar
    case alaotra_mangoro
    case amoron_i_mania
    case analamanga
    case analanjirofo
    case androy
    case anosy
    case atsimo_andrefana
    case atsimo_atsinanana
    case atsinanana
    case betsiboka
    case boeny
    case bongolava
    case diana
    case ihorombe
    case itasy
    case matsiatra_ambony
    case melaky
    case menabe
    case sava
    case sofia
    case vakinankaratra
    case vatovavy
    case vatovavy_fitovinany
    
    public func getCountry() -> Country {
        return Country.madagascar
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public func getRealName() -> String? {
        switch self {
        case .alaotra_mangoro: return "Alaotra-Mangoro"
        case .amoron_i_mania: return "Amoron'i Mania"
        case .atsimo_andrefana: return "Atsimo-Andrefana"
        case .atsimo_atsinanana: return "Atsimo-Atsinanana"
        case .vatovavy_fitovinany: return "Vatovavy-Fitovinany"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .diana,
                .itasy,
                .sava,
                .sofia:
            return nil
        default:
            return nil
        }
    }
}
