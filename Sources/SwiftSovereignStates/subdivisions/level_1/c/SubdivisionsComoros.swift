//
//  SubdivisionsComoros.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsComoros : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Politics_of_the_Comoros#Autonomous_islands
    case anjouan
    case grande_comore
    case moheli
    
    public func getCountry() -> Country {
        return Country.comoros
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.autonomous_islands
    }
    
    public func getRealName() -> String? {
        switch self {
        case .moheli: return "Mohéli"
        default: return nil
        }
    }
}
