//
//  SubdivisionsMicronesia.swift
//  
//
//  Created by Evan Anderson on 9/27/22.
//

import Foundation

public enum SubdivisionsMicronesia : String, SovereignStateSubdivision {
    case chuuk
    case kosrae
    case pohnpei
    case yap
    
    public var country : Locale.Region {
        return Locale.Region.micronesia
    }
    
    public var type : Locale.Region.SubdivisionType {
        return Locale.Region.SubdivisionType.states
    }
}
