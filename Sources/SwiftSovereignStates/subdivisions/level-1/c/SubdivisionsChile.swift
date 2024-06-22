//
//  SubdivisionsChile.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsChile : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Chile
    case antofagasta
    case araucania
    case arica_and_parinacota
    case atacama
    case aysen
    case biobio
    case coquimbo
    case los_lagos
    case los_rios
    case magallanes
    case maule
    case metropolitan
    case nuble
    case o_higgines
    case tarapaca
    case valparaiso
    
    public var country : Locale.Region {
        return Locale.Region.chile
    }
    
    public var type : Locale.Region.SubdivisionType {
        return Locale.Region.SubdivisionType.regions
    }
}
