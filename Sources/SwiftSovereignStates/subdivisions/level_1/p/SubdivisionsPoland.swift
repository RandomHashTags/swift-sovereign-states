//
//  SubdivisionsPoland.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsPoland : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Voivodeships_of_Poland
    case greater_poland
    case holy_cross
    case kuyavia_pomeranian
    case lesser_poland
    case lodz
    case lower_silesian
    case lublin
    case lubusz
    case masovian
    case opole
    case podlaskie
    case pomeranian
    case silesian
    case subcarpathian
    case warmian_masurian
    case west_pomeranian
    
    public var country : Locale.Region {
        return Locale.Region.poland
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.voivodeships
    }
}
