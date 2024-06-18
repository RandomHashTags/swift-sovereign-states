//
//  SubdivisionsFrance.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsFrance : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_France
    case auvergne_rhone_alpes
    case burgundy_free_county
    case brittany
    case centre_loire_valley
    case corsica
    case great_east
    case upper_france
    case isle_of_france
    case normandy
    case new_aquitaine
    case occitania
    case loire_countries
    case provence_alps_french_riviera
    
    public var country : Locale.Region {
        return Locale.Region.france
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
}
