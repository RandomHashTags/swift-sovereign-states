//
//  CitiesUnitedStatesArizona.swift
//  
//
//  Created by Evan Anderson on 9/23/22.
//

import Foundation

public enum CitiesUnitedStatesArizona : String, CaseIterable, SovereignStateCity { // https://en.wikipedia.org/wiki/List_of_municipalities_in_Arizona
    case apache_junction
    case avondale
    
    case benson
    case bisbee
    case buckeye
    case bullhead_city
    
    case camp_verde
    case carefree
    case casa_grande
    case cave_creek
    case chandler
    case chino_valley
    case clarkdale
    case clifton
    case colorado_city
    case coolidge
    case cottonwood
    
    case dewey_humboldt
    case douglas
    case duncan
    
    case eagar
    case el_mirage
    case eloy
    
    case flagstaff
    case florence
    case fountain_hills
    case fredonia
    
    case gila_bend
    case gilbert
    case glendale
    case globe
    case goodyear
    case guadalupe
    
    case hayden
    case holbrook
    case huachuca_city
    
    case jerome
    
    case kearny
    case kingman
    
    case lake_havasu_city
    case litchfield_park
    
    case mammoth
    case marana
    case maricopa
    case mesa
    case miami
    
    case nogales
    
    case oro_valley
    
    case page
    case paradise_valley
    case parker
    case patagonia
    case payson
    case peoria
    case phoenix
    case pima
    case pinetop_lakeside
    case prescott
    case prescott_valley
    
    case quartzsite
    case queen_creek
    
    case safford
    case sahuarita
    case san_luis
    case scottsdale
    case sedona
    case show_low
    case sierra_vista
    case snowflake
    case somerton
    case south_tucson
    case springerville
    case st_johns
    case star_valley
    case superior
    case surprise
    
    case taylor
    case tempe
    case thatcher
    case tolleson
    case tombstone
    case tucson
    case tusayan
    
    case wellton
    case wickenburg
    case willcox
    case williams
    case winkelman
    case winslow
    
    case youngtown
    case yuma
    
    public func getSubdivision() -> any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.arizona
    }
    
    public func getRealName() -> String? {
        switch self {
        case .dewey_humboldt: return "Dewey-Humboldt"
        case .pinetop_lakeside: return "Pinetop-Lakeside"
        default: return nil
        }
    }
}
