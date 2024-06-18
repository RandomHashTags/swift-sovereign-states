//
//  SubdivisionsGreenland.swift
//  
//
//  Created by Evan Anderson on 2/11/23.
//

import Foundation

public enum SubdivisionsGreenland : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Greenland
    case avannaata
    case kujalleq
    case qeqertalik
    case qeqqata
    case sermersooq
    
    public var country : Locale.Region {
        return Locale.Region.greenland
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.municipalities
    }
}
