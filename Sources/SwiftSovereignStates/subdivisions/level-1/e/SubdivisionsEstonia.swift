//
//  SubdivisionsEstonia.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public enum SubdivisionsEstonia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Counties_of_Estonia
    case harju
    case hiiu
    case ida_viru
    case jarva
    case jogeva
    case laane
    case laane_viru
    case parnu
    case polva
    case rapla
    case saare
    case tartu
    case valga
    case viljandi
    case voru
    
    public var country : Locale.Region {
        return Locale.Region.estonia
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.counties
    }
}
