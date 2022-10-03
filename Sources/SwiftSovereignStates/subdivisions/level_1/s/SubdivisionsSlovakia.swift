//
//  SubdivisionsSlovakia.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public enum SubdivisionsSlovakia : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Slovakia
    case banska_bystrica
    case bratislava
    case kosice
    case nitra
    case presov
    case trencin
    case trnava
    case zilina
    
    public func getCountry() -> Country {
        return Country.slovakia
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public func getRealName() -> String? {
        switch self {
        case .banska_bystrica: return "Banská Bystrica"
        case .kosice: return "Košice"
        case .presov: return "Prešov"
        case .trencin: return "Trenčín"
        case .zilina: return "Žilina"
        default: return nil
        }
    }
    
    public func getFlagURLWikipediaSVGID() -> String? {
        switch self {
        case .bratislava: return "4/4c/Bratislavsky_vlajka"
        case .trnava: return "d/d4/Trnavsky_vlajka"
        case .trencin: return "5/51/Trenciansky_vlajka"
        case .nitra: return "e/ea/Nitriansky_vlajka"
        case .zilina: return "d/d8/Zilinsky_vlajka"
        case .banska_bystrica: return "f/ff/Banskobystricky_vlajka"
        case .presov: return "4/4d/Presovsky_vlajka"
        case .kosice: return "3/32/Kosicky_vlajka"
        }
    }
}
