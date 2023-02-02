//
//  SubdivisionsNicaragua.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsNicaragua : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Departments_of_Nicaragua
    case boaco
    case carazo
    case chinandega
    case chontales
    case esteli
    case granada
    case jinotega
    case leon
    case madriz
    case managua
    case masaya
    case matagalpa
    case north_caribbean_coast
    case nueva_segovia
    case rio_san_juan
    case rivas
    case south_caribbean_coast
    
    public var country : Country {
        return Country.nicaragua
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .north_caribbean_coast,
                .south_caribbean_coast:
            return SovereignStateSubdivisionType.autonomous_regions
        default:
            return SovereignStateSubdivisionType.departments
        }
    }
    
    public var wikipedia_name : String? {
        switch self {
        case .north_caribbean_coast: return "North Caribbean Coast Autonomous Region"
        case .south_caribbean_coast: return "South Caribbean Coast Autonomous Region"
        default: return nil
        }
    }
    
    public var real_name : String? {
        switch self {
        case .esteli: return "Estelí"
        case .leon: return "León"
        case .rio_san_juan: return "Río San Juan"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .north_caribbean_coast,
                .south_caribbean_coast:
            return nil
        default:
            return nil
        }
    }
    
    public var iso_alpha_2 : String? {
        switch self {
        case .boaco: return "BO"
        case .carazo: return "CA"
        case .chinandega: return "CI"
        case .chontales: return "CO"
        case .esteli: return "ES"
        case .granada: return "GR"
        case .jinotega: return "JI"
        case .leon: return "LE"
        case .madriz: return "MD"
        case .managua: return "MN"
        case .masaya: return "MS"
        case .matagalpa: return "MT"
        case .north_caribbean_coast: return "AN"
        case .nueva_segovia: return "NS"
        case .rio_san_juan: return "SJ"
        case .rivas: return "RI"
        case .south_caribbean_coast: return "AS"
        }
    }
}
