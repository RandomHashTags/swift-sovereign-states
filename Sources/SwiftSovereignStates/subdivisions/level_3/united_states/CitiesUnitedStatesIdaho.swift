//
//  CitiesUnitedStatesIdaho.swift
//  
//
//  Created by Evan Anderson on 9/22/22.
//

import Foundation

public enum CitiesUnitedStatesIdaho : String, SovereignStateCity { // https://en.wikipedia.org/wiki/List_of_cities_in_Idaho
    case aberdeen
    case acequia
    case albion
    case american_falls
    case ammon
    case arco
    case arimo
    case ashton
    case athol
    case atomic_city
    
    case bancroft
    case basalt
    case bellevue
    case blackfoot
    case bliss
    case bloomington
    case boise
    case bonners_ferry
    case bovill
    case buhl
    case burley
    case butte_city
    
    case caldwell
    case cambridge
    case carey
    case cascade
    case castleford
    case challis
    case chubbuck
    case clark_fork
    case clayton
    case clifton
    case coeur_dalene
    case cottonwood
    case council
    case craigmont
    case crouch
    case culdesac
    
    case dalton_gardens
    case dayton
    case deary
    case declo
    case dietrich
    case donnelly
    case dover
    case downey
    case driggs
    case drummond
    case dubois
    
    case eagle
    case east_hope
    case eden
    case elk_river
    case emmett
    
    case fairfield
    case ferdinand
    case fernan_lake_village
    case filer
    case firth
    case franklin
    case fruitland
    
    case garden_city
    case genesee
    case georgetown
    case glenns_ferry
    case gooding
    case grace
    case grand_view
    case grangeville
    case greenleaf
    
    case hagerman
    case hailey
    case hamer
    case hansen
    case harrison
    case hauser
    case hayden
    case hayden_lake
    case hazelton
    case heyburn
    case hollister
    case homedale
    case hope
    case horseshoe_bend
    case huetter
    
    case idaho_city
    case idaho_falls
    case inkom
    case iona
    case irwin
    case island_park
    
    case jerome
    case juliaetta
    
    case kamiah
    case kellogg
    case kendrick
    case ketchum
    case kimberly
    case kooskia
    case kootenai
    case kuna
    
    case lapwai
    case lava_hot_springs
    case leadore
    case lewiston
    case lewisville
    case lost_river
    
    case mackay
    case malad_city
    case malta
    case marsing
    case mccall
    case mccammon
    case melba
    case menan
    case meridian
    case middleton
    case midvale
    case minidoka
    case montpelier
    case moore
    case moscow
    case mountain_home
    case moyie_springs
    case mud_lake
    case mullan
    case murtaugh
    
    case nampa
    case new_meadows
    case new_plymouth
    case newdale
    case nezperce
    case notus
    
    case oakley
    case oldtown
    case onaway
    case orofino
    case osburn
    case oxford
    
    case paris
    case parker
    case parma
    case paul
    case payette
    case peck
    case pierce
    case pinehurst
    case placerville
    case plummer
    case pocatello
    case ponderay
    case post_falls
    case potlatch
    case preston
    case priest_river
    
    case rathdrum
    case reubens
    case rexburg
    case richfield
    case rigby
    case riggins
    case ririe
    case roberts
    case rockland
    case rupert
    
    case salmon
    case sandpoint
    case shelley
    case shoshone
    case smelterville
    case soda_springs
    case spencer
    case spirit_lake
    case st_anthony
    case st_charles
    case st_maries
    case stanley
    case star
    case state_line
    case stites
    case sugar_city
    case sun_valley
    case swan_valley
    
    case tensed
    case teton
    case tetonia
    case troy
    case twin_falls
    
    case ucon
    
    case victor
    
    case wallace
    case wardner
    case warm_river
    case weippe
    case weiser
    case wendell
    case weston
    case white_bird
    case wilder
    case winchester
    case worley
    
    public func getSubdivision() -> any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.idaho
    }
    
    public var real_name : String? {
        switch self {
        case .coeur_dalene: return "Coeur d'Alene"
        default: return nil
        }
    }
}
