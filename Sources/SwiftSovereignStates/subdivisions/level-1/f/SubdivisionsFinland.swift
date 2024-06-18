//
//  SubdivisionsFinland.swift
//  
//
//  Created by Evan Anderson on 2/11/23.
//

import Foundation

public enum SubdivisionsFinland : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Finland
    case aland
    case central_finland
    case central_ostrobothnia
    case kainuu
    case kanta_hame
    case kymenlaakso
    case lapland
    case north_karelia
    case north_ostrobothnia
    case north_savo
    case ostrobothnia
    case paijat_hame
    case pirkanmaa
    case satakunta
    case south_karelia
    case south_ostrobothnia
    case south_savo
    case southwest_finland
    case uusimaa
    
    public var country : Locale.Region {
        return Locale.Region.finland
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
}
