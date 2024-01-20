//
//  SubdivisionsComoros.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsComoros : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Politics_of_the_Comoros#Autonomous_islands
    case anjouan
    case grande_comore
    case moheli
    
    public var country : Locale.Region {
        return Locale.Region.comoros
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.autonomous_islands
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .anjouan: return "a/a6/Flag_of_Anjouan_%28official%29"
        case .grande_comore: return "3/33/Flag_of_Grande_Comore"
        case .moheli: return "c/c2/Flag_of_Mohéli_%28official%29"
        }
    }
    
    public var wikipediaURLSuffix : String? {
        return nil
    }
}
