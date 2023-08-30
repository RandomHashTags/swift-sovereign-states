//
//  SubdivisionsLithuania.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsLithuania : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Counties_of_Lithuania
    case alytus
    case kaunas
    case klaipeda
    case marijampole
    case panevezys
    case siauliai
    case taurage
    case telsiai
    case utena
    case vilnius
    
    public var country : Locale.Region {
        return Locale.Region.lithuania
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.counties
    }
}
