//
//  SubdivisionsLiechtenstein.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public enum SubdivisionsLiechtenstein : String, SovereignStateSubdivision {
    case balzers
    case eschen
    case gamprin
    case mauren
    case planken
    case ruggell
    case schaan
    case schellenberg
    case triesen
    case triesenberg
    case vaduz
    
    public var country : Locale.Region {
        return Locale.Region.liechtenstein
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.municipalities
    }
}
