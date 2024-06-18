//
//  SubdivisionsPalau.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public enum SubdivisionsPalau : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/States_of_Palau
    case aimeliik
    case airai
    case angaur
    case hatohobei
    case kayangel
    case koror
    case melekeok
    case ngaraard
    case ngarchelong
    case ngardmau
    case ngatpang
    case ngchesar
    case ngeremlengui
    case ngiwal
    case peleliu
    case sonsorol
    
    public var country : Locale.Region {
        return Locale.Region.palau
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.states
    }
}
