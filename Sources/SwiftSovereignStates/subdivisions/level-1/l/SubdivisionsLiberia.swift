//
//  SubdivisionsLiberia.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public enum SubdivisionsLiberia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Liberia
    case bomi
    case bong
    case gbarpolu
    case grand_bassa
    case grand_cape_mount
    case grand_gedeh
    case grand_kru
    case lofa
    case margibi
    case maryland
    case montserrado
    case nimba
    case river_gee
    case rivercess
    case sinoe
    
    public var country : Locale.Region {
        return Locale.Region.liberia
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.counties
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .bomi: return "2/24/Flag_of_Bomi_County"
        case .bong: return "1/10/Flag_of_Bong_County"
        case .gbarpolu: return "8/8f/Flag_of_Gbarpolu_County"
        case .grand_bassa: return "6/65/Flag_of_Grand_Bassa_County"
        case .grand_cape_mount: return "d/d9/Flag_of_Grand_Cape_Mount_County"
        case .grand_gedeh: return "a/aa/Flag_of_Grand_Gedeh_County"
        case .grand_kru: return "b/ba/Flag_of_Grand_Kru_County"
        case .lofa: return "e/ee/Flag_of_Lofa_County"
        case .margibi: return "f/f6/Flag_of_Margibi_County"
        case .maryland: return "5/59/Flag_of_Maryland_County"
        case .montserrado: return "c/c4/Flag_of_Montserrado_County"
        case .nimba: return "9/90/Flag_of_Nimba_County"
        case .river_gee: return "4/4c/Flag_of_River_Gee_County"
        case .rivercess: return "5/51/Flag_of_Rivercess_County"
        case .sinoe: return "a/ae/Flag_of_Sinoe_County"
        }
    }
}
