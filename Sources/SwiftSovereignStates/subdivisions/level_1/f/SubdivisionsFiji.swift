//
//  SubdivisionsFiji.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsFiji : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Fiji
    case ba
    case bua
    case cakaudrove
    case kadavu
    case lau
    case lomaiviti
    case macuata
    case nadroga_navosa
    case naitasiri
    case namosi
    case ra
    case rewa
    case serua
    case tailevu
    
    case rotuma
    
    public var country : Country {
        return Country.fiji
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .rotuma:
            return SovereignStateSubdivisionType.special_self_governing_dependencies
        default:
            return SovereignStateSubdivisionType.provinces
        }
    }
    
    public var wikipedia_url_suffix : String? {
        switch self {
        case .rotuma:
            return nil
        default:
            return nil
        }
    }
    
    public var neighbors : [any SovereignStateSubdivision]? {
        switch self {
        case .ba:
            return [SubdivisionsFiji.rotuma, SubdivisionsFiji.ra, SubdivisionsFiji.naitasiri, SubdivisionsFiji.nadroga_navosa]
        case .bua:
            return [SubdivisionsFiji.macuata, SubdivisionsFiji.cakaudrove]
        case .cakaudrove:
            return [SubdivisionsFiji.bua, SubdivisionsFiji.macuata, SubdivisionsFiji.lau, SubdivisionsFiji.lomaiviti]
        case .kadavu:
            return [SubdivisionsFiji.nadroga_navosa, SubdivisionsFiji.rewa, SubdivisionsFiji.lau]
        case .lau:
            return [SubdivisionsFiji.kadavu, SubdivisionsFiji.lomaiviti, SubdivisionsFiji.cakaudrove]
        case .lomaiviti:
            return [SubdivisionsFiji.tailevu, SubdivisionsFiji.bua, SubdivisionsFiji.cakaudrove, SubdivisionsFiji.lau]
        case .macuata:
            return [SubdivisionsFiji.bua, SubdivisionsFiji.cakaudrove]
        case .nadroga_navosa:
            return [SubdivisionsFiji.ba, SubdivisionsFiji.naitasiri, SubdivisionsFiji.namosi, SubdivisionsFiji.serua, SubdivisionsFiji.rewa, SubdivisionsFiji.kadavu]
        case .naitasiri:
            return [SubdivisionsFiji.ba, SubdivisionsFiji.ra, SubdivisionsFiji.tailevu, SubdivisionsFiji.rewa, SubdivisionsFiji.namosi, SubdivisionsFiji.nadroga_navosa]
        case .namosi:
            return [SubdivisionsFiji.nadroga_navosa, SubdivisionsFiji.naitasiri, SubdivisionsFiji.rewa, SubdivisionsFiji.serua]
        case .ra:
            return [SubdivisionsFiji.ba, SubdivisionsFiji.naitasiri, SubdivisionsFiji.tailevu]
        case .rewa:
            return [SubdivisionsFiji.nadroga_navosa, SubdivisionsFiji.serua, SubdivisionsFiji.namosi, SubdivisionsFiji.naitasiri, SubdivisionsFiji.kadavu]
        case .serua:
            return [SubdivisionsFiji.nadroga_navosa, SubdivisionsFiji.namosi, SubdivisionsFiji.rewa]
        case .tailevu:
            return [SubdivisionsFiji.ra, SubdivisionsFiji.naitasiri, SubdivisionsFiji.lomaiviti]
            
        case .rotuma:
            return [SubdivisionsFiji.ba]
        }
    }
    
    public var time_zones : [SovereignStateTimeZone]? {
        return [SovereignStateTimeZone.fiji_time]
    }
}
