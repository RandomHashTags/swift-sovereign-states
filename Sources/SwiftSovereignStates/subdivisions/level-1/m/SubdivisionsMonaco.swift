//
//  SubdivisionsMonaco.swift
//
//
//  Created by Evan Anderson on 1/23/24.
//

import Foundation

public enum SubdivisionsMonaco : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Monaco#Administrative_divisions
    case monaco
    
    public var country : Locale.Region {
        return Locale.Region.monaco
    }
    
    public var type : Locale.Region.SubdivisionType {
        return Locale.Region.SubdivisionType.municipalities
    }
}
