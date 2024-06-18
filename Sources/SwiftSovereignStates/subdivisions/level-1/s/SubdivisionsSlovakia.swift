//
//  SubdivisionsSlovakia.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public enum SubdivisionsSlovakia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Slovakia
    case banska_bystrica
    case bratislava
    case kosice
    case nitra
    case presov
    case trencin
    case trnava
    case zilina
    
    public var country : Locale.Region {
        return Locale.Region.slovakia
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
}
