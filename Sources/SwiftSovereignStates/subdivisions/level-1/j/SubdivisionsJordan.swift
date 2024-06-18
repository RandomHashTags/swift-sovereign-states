//
//  SubdivisionsJordan.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsJordan : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Governorates_of_Jordan
    case ajloun
    case amman
    case aqaba
    case balqa
    case irbid
    case jerash
    case karak
    case maan
    case madaba
    case mafraq
    case tafilah
    case zarqa
    
    public var country : Locale.Region {
        return Locale.Region.jordan
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.governorates
    }
}
