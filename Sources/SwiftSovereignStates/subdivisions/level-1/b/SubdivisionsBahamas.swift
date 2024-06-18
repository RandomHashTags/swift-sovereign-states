//
//  SubdivisionsBahamas.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public enum SubdivisionsBahamas : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Local_government_in_The_Bahamas
    case acklins
    case berry_islands
    case bimini
    case black_point
    case cat_island
    case central_abaco
    case central_andros
    case central_eleuthera
    case city_of_freeport
    case crooked_island
    case east_grand_bahama
    case exuma
    case grand_cay
    case green_turtle_cay
    case harbour_island
    case hope_town
    case inagua
    case long_island
    case mangrove_cay
    case mayaguana
    case moore_s_island
    case north_abaco
    case north_andros
    case north_eleuthera
    case ragged_island
    case rum_cay
    case san_salvador_island
    case south_abaco
    case south_andros
    case south_eleuthera
    case spanish_wells
    case west_grand_bahama
    
    public var country : Locale.Region {
        return Locale.Region.bahamas
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
    
    public var wikipediaURLSuffix : String? {
        return nil
    }
}
