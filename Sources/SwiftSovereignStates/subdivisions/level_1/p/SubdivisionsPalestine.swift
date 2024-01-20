//
//  SubdivisionsPalestine.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsPalestine : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Governorates_of_Palestine
    case bethlehem
    case deir_al_balah
    case gaza
    case hebron
    case jenin
    case jericho
    case jerusalem
    case khan_yunis
    case nablus
    case north_gaza
    case qalqilya
    case rafah
    case ramallah_and_al_bireh
    case salfit
    case tubas
    case tulkarm
    
    public var country : Locale.Region {
        return Locale.Region.palestine
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.governorates
    }
    
    public var wikipediaURLSuffix : String? {
        return "_Governorate"
    }
}
