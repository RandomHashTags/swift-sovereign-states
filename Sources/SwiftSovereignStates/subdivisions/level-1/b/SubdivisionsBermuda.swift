//
//  SubdivisionsBermuda.swift
//  
//
//  Created by Evan Anderson on 2/11/23.
//

import Foundation

public enum SubdivisionsBermuda : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Bermuda
    case devonshire
    case hamilton
    case paget
    case pembroke
    case sandys
    case smith_s
    case southampton
    case st_george_s
    case warwick
    
    case hamilton_city
    case st_george_s_town
    
    public var country : Locale.Region {
        return Locale.Region.bermuda
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .hamilton:
            return SovereignStateSubdivisionType.cities
        case .st_george_s_town:
            return SovereignStateSubdivisionType.towns
        default:
            return SovereignStateSubdivisionType.parishes
        }
    }
}
