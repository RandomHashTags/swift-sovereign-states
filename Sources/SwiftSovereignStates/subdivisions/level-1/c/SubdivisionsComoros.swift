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
    
    public var type : Locale.Region.SubdivisionType {
        return Locale.Region.SubdivisionType.autonomous_islands
    }
}
