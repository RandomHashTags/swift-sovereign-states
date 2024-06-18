//
//  SubdivisionsSomalia.swift
//  
//
//  Created by Evan Anderson on 2/12/23.
//

import Foundation

public enum SubdivisionsSomalia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/States_and_regions_of_Somalia
    case galmudug
    case hirshabelle
    case jubaland
    case puntland
    case south_west
    case somaliland
    
    public var country : Locale.Region {
        return Locale.Region.somalia
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.federal_member_states
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .galmudug: return "9/9b/Flag_of_Galmudug_State_of_Somalia_%282015%29"
        case .hirshabelle: return "1/18/Hirshabeelle.png"
        case .jubaland: return "a/a6/Flag_of_Jubaland_%28Somalia%29"
        case .puntland: return "7/7a/Flag_of_Puntland"
        case .south_west: return "8/8b/Flag_of_South_West_State_of_Somalia"
        case .somaliland: return "4/4d/Flag_of_Somaliland"
        }
    }
}
