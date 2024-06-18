//
//  SubdivisionsSaintKittsAndNevis.swift
//
//
//  Created by Evan Anderson on 1/24/24.
//

import Foundation

public enum SubdivisionsSaintKittsAndNevis : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Saint_Kitts_and_Nevis#Administrative_divisions
    case christ_church_nichola_town
    case saint_anne_sandy_point
    case saint_george_basseterre
    case saint_george_gingerland
    case saint_james_windward
    case saint_john_capisterre
    case saint_john_figtree
    case saint_mary_cayon
    case saint_paul_capisterre
    case saint_paul_charlestown
    case saint_peter_basseterre
    case saint_thomas_lowland
    case saint_thomas_middle_island
    case trinity_palmetto_point
    
    public var country : Locale.Region {
        return Locale.Region.saintKittsNevis
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.parishes
    }
}
