//
//  CitiesUnitedStatesUtah.swift
//  
//
//  Created by Evan Anderson on 9/23/22.
//

import Foundation

public enum CitiesUnitedStatesUtah : String, CaseIterable, SovereignStateCity { // https://en.wikipedia.org/wiki/List_of_municipalities_in_Utah
    case alpine
    case alta
    case altamont
    case alton
    case amalga
    case american_fork
    case annabella
    case antimony
    case apple_valley
    case aurora
    
    case ballard
    case bear_river_city
    case beaver
    case bicknell
    case big_water
    case blanding
    case bluff
    case bluffdale
    case boulder
    case bountiful
    case brian_head
    case brigham_city
    case brighton
    case bryce_canyon_city
    
    case cannonville
    case castle_dale
    case castle_valley
    case cedar_city
    case cedar_fort
    case cedar_hills
    case centerfield
    case centerville
    case central_valley
    case charleston
    case circleville
    case clarkston
    case clawson
    case clearfield
    case cleveland
    case clinton
    case coalville
    case copperton
    case corinne
    case cornish
    case cottonwood_heights
    
    case daniel
    case delta
    case deweyville
    case draper
    case duchesne
    case dutch_john
    
    case eagle_mountain
    case east_carbon
    case elk_ridge
    case elmo
    case elsinore
    case elwood
    case emery
    case emigration_canyon
    case enoch
    case enterprise
    case ephraim
    case erda
    case escalante
    case eureka
    
    case fairfield
    case fairview
    case farmington
    case farr_west
    case fayette
    case ferron
    case fielding
    case fillmore
    case fountain_green
    case francis
    case fruit_heights
    
    case garden_city
    case garland
    case genola
    case glendale
    case glenwood
    case goshen
    case grantsville
    case green_river
    case gunnison
    
    case hanksville
    case harrisville
    case hatch
    case heber_city
    case helper
    case henefer
    case henrieville
    case herriman
    case hideout
    case highland
    case hildale
    case hinckley
    case holden
    case holladay
    case honeyville
    case hooper
    case howell
    case huntington
    case huntsville
    case hurricane
    case hyde_park
    case hyrum
    
    case independence
    case interlaken
    case ivins
    
    case joseph
    case junction
    
    case kamas
    case kanab
    case kanarraville
    case kanosh
    case kaysville
    case kearns
    case kingston
    case koosharem
    
    case la_verkin
    case laketown
    case layton
    case leamington
    case leeds
    case lehi
    case levan
    case lewiston
    case lindon
    case loa
    case logan
    case lyman
    case lynndyl
    
    case magna
    case manila
    case manti
    case mantua
    case mapleton
    case marriott_slaterville
    case marysvale
    case mayfield
    case meadow
    case mendon
    case midvale
    case midway
    case milford
    case millcreek
    case millville
    case minersville
    case moab
    case mona
    case monroe
    case monticello
    case morgan
    case moroni
    case mount_pleasant
    case murray
    case myton
    
    case naples
    case nephi
    case new_harmony
    case newton
    case nibley
    case north_logan
    case north_ogden
    case north_salt_lake
    
    case oak_city
    case oakley
    case ogden
    case orangeville
    case orderville
    case orem
    
    case panguitch
    case paradise
    case paragonah
    case park_city
    case parowan
    case payson
    case perry
    case plain_city
    case pleasant_grove
    case pleasant_view
    case plymouth
    case portage
    case price
    case providence
    case provo
    
    case randolph
    case redmond
    case richfield
    case richmond
    case river_heights
    case riverdale
    case riverton
    case rockville
    case rocky_ridge
    case roosevelt
    case roy
    case rush_valley
    
    case salem
    case salina
    case salt_lake_city
    case sandy
    case santa_clara
    case santaquin
    case saratoga_springs
    case scipio
    case scofield
    case sigurd
    case smithfield
    case snowville
    case south_jordan
    case south_ogden
    case south_salt_lake
    case south_weber
    case spanish_fork
    case spring_city
    case springdale
    case springville
    case st_george
    case sterling
    case stockton
    case sunset
    case syracuse
    
    case tabiona
    case taylorsville
    case tooele
    case toquerville
    case torrey
    case tremonton
    case trenton
    case tropic
    
    case uintah
    
    case vernal
    case vernon
    case vineyard
    case virgin
    
    case wales
    case wallsburg
    case washington
    case washington_terrace
    case wellington
    case wellsville
    case wendover
    case west_bountiful
    case west_haven
    case west_jordan
    case west_point
    case west_valley_city
    case white_city
    case willard
    case woodland_hills
    case woodruff
    case woods_cross
    
    public func getSubdivision() -> any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.utah
    }
    
    public func getRealName() -> String? {
        switch self {
        case .marriott_slaterville: return "Marriott-Slaterville"
        default: return nil
        }
    }
}
