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
    
    public func getFlagURLWikipediaSVGID() -> String? {
        switch self {
        case .anjouan: return "a/a6/Flag_of_Anjouan_%28official%29"
        case .grande_comore: return "3/33/Flag_of_Grande_Comore"
        case .moheli: return "c/c2/Flag_of_Mohéli_%28official%29"
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        return nil
    }
}
