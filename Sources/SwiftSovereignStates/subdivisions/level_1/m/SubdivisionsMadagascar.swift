//
//  SubdivisionsMadagascar.swift
//  
//
//  Created by Evan Anderson on 7/29/22.
//

import Foundation

public enum SubdivisionsMadagascar : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Madagascar
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
    
    public var country : Locale.Region {
        return Locale.Region.madagascar
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .diana,
                .itasy,
                .sava,
                .sofia:
            return "_" + type_suffix
        default:
            return nil
        }
    }
}
