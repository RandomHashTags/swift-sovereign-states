//
//  SubdivisionsBahrain.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public enum SubdivisionsBahrain : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Governorates_of_Bahrain
    case capital
    case muharraq
    case northern
    case southern
    
    public var country : Locale.Region {
        return Locale.Region.bahrain
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.governorates
    }
}
