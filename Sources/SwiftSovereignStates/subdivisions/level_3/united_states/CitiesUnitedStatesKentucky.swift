//
//  CitiesUnitedStatesKentucky.swift
//  
//
//  Created by Evan Anderson on 9/23/22.
//

import Foundation

public enum CitiesUnitedStatesKentucky : String, CaseIterable, SovereignStateCity { // https://en.wikipedia.org/wiki/List_of_cities_in_Kentucky
    case adairville
    case albany
    case alexandria
    case allen
    case anchorage
    case arlington
    case ashland
    case auburn
    case audubon_park
    case augusta
    
    case bancroft
    case barbourmeade
    case barbourville
    case bardstown
    case bardwell
    case barlow
    case beattyville
    case beaver_dam
    case bedford
    case beechwood_village
    case bellefonte
    case bellemeade
    case bellevue
    case bellewood
    case benham
    case benton
    case berea
    case berry
    case blackey
    case blaine
    case blandville
    case bloomfield
    case blue_ridge_manor
    case bonnieville
    case booneville
    case bowling_green
    case bradfordsville
    case brandenburg
    case bremen
    case briarwood
    case brodhead
    case broeck_pointe
    case bromley
    case brooksville
    case brownsboro_farm
    case brownsboro_village
    case brownsville
    case buckhorn
    case burgin
    case burkesville
    case burnside
    case butler
    
    case cadiz
    case calhoun
    case california
    case calvert_city
    case camargo
    case cambridge
    case campbellsburg
    case campbellsville
    case campton
    case caneyville
    case carlisle
    case carrollton
    case carrsville
    case catlettsburg
    case cave_city
    case centertown
    case central_city
    case clarkson
    case clay
    case clay_city
    case clinton
    case cloverport
    case coal_run_village
    case cold_spring
    case coldstream
    case columbia
    case columbus
    case concord
    case corbin
    case corinth
    case corydon
    case covington
    case crab_orchard
    case creekside
    case crescent_springs
    case crestview
    case crestview_hills
    case crestwood
    case crittenden
    case crofton
    case crossgate
    case cumberland
    case cynthiana
    
    case danville
    case dawson_springs
    case dayton
    case dixon
    case douglass_hills
    case dover
    case drakesboro
    case druid_hills
    case dry_ridge
    
    case earlington
    case eddyville
    case edgewood
    case edmonton
    case ekron
    case elizabethtown
    case elkhorn_city
    case elkton
    case elsmere
    case eminence
    case erlanger
    case eubank
    case evarts
    case ewing
    
    case fairfield
    case fairview
    case falmouth
    case ferguson
    case fincastle
    case flatwoods
    case fleming_neon
    case flemingsburg
    case florence
    case fordsville
    case forest_hills
    case fort_mitchell
    case fort_thomas
    case fort_wright
    case fountain_run
    case fox_chase
    case frankfort
    case franklin
    case fredonia
    case frenchburg
    case fulton
    
    case gamaliel
    case georgetown
    case germantown
    case ghent
    case glasgow
    case glencoe
    case glenview
    case glenview_hills
    case glenview_manor
    case goose_creek
    case goshen
    case grand_rivers
    case gratz
    case graymoor_devondale
    case grayson
    case green_spring
    case greensburg
    case greenup
    case greenville
    case guthrie
    
    case hanson
    case hardin
    case hardinsburg
    case harlan
    case harrodsburg
    case hartford
    case hawesville
    case hazard
    case hazel
    case hebron_estates
    case henderson
    case heritage_creek
    case hickman
    case hickory_hill
    case highland_heights
    case hills_and_dales
    case hillview
    case hindman
    case hodgenville
    case hollow_creek
    case hollyvilla
    case hopkinsville
    case horse_cave
    case houston_acres
    case hunters_hollow
    case hurstbourne
    case hurstbourne_acres
    case hustonville
    case hyden
    
    case independence
    case indian_hills
    case inez
    case irvine
    case irvington
    case island
    
    case jackson
    case jamestown
    case jeffersontown
    case jeffersonville
    case jenkins
    case junction_city
    
    case keene
    case kenton_vale
    case kevil
    case kingsley
    case kuttawa
    
    case la_grange
    case lacenter
    case lafayette
    case lakeside_park
    case lakeview_heights
    case lancaster
    case langdon_place
    case lawrenceburg
    case lebanon
    case lebanon_junction
    case leitchfield
    case lewisburg
    case lewisport
    case lexington
    case liberty
    case lincolnshire
    case livermore
    case livingston
    case london
    case loretto
    case louisa
    case louisville
    case loyall
    case ludlow
    case lynch
    case lyndon
    case lynnview
    
    case mackville
    case madisonville
    case manchester
    case manor_creek
    case marion
    case martin
    case maryhill_estates
    case mayfield
    case maysville
    case mchenry
    case mckee
    case meadow_vale
    case meadowbrook_farm
    case meadowview_estates
    case melbourne
    case mentor
    case middlesboro
    case middletown
    case midway
    case millersburg
    case milton
    case mockingbird_valley
    case monterey
    case monticello
    case moorland
    case morehead
    case morganfield
    case morgantown
    case mortons_gap
    case mount_olivet
    case mount_sterling
    case mount_vernon
    case mount_washington
    case muldraugh
    case munfordville
    case murray
    case murray_hill
    
    case nebo
    case new_castle
    case new_haven
    case newport
    case nicholasville
    case norbourne_estates
    case north_middletown
    case northfield
    case nortonville
    case norwood
    
    case oak_grove
    case oakland
    case old_brownsboro_place
    case olive_hill
    case orchard_grass_hills
    case owensboro
    case owenton
    case owingsville
    
    case paducah
    case paintsville
    case paris
    case park_city
    case park_hills
    case parkway_village
    case pembroke
    case perryville
    case pewee_valley
    case pikeville
    case pineville
    case pioneer_village
    case pippa_passes
    case plantation
    case pleasureville
    case plum_springs
    case poplar_hills
    case powderly
    case prestonsburg
    case prestonville
    case princeton
    case prospect
    case providence
    
    case raceland
    case radcliff
    case ravenna
    case raywick
    case richlawn
    case richmond
    case river_bluff
    case riverwood
    case robards
    case rochester
    case rockport
    case rolling_fields
    case rolling_hills
    case russell
    case russell_springs
    case russellville
    case ryland_heights
    
    case sacramento
    case sadieville
    case salem
    case salt_lick
    case salyersville
    case sanders
    case sandy_hook
    case sardis
    case science_hill
    case scottsville
    case sebree
    case seneca_gardens
    case sharpsburg
    case shelbyville
    case shepherdsville
    case shively
    case silver_grove
    case simpsonville
    case slaughters
    case smithfield
    case smithland
    case smiths_grove
    case somerset
    case sonora
    case south_carrollton
    case south_park_view
    case south_shore
    case southgate
    case sparta
    case spring_mill
    case spring_valley
    case springfield
    case st_charles
    case st_mary
    case st_matthews
    case st_regis_park
    case stamping_ground
    case stanford
    case stanton
    case strathmoor_manor
    case strathmoor_village
    case sturgis
    case sycamore
    
    case taylor_mill
    case taylorsville
    case ten_broeck
    case thornhill
    case tompkinsville
    case trenton
    
    case union
    case uniontown
    case upton
    
    case vanceburg
    case versailles
    case vicco
    case villa_hills
    case vine_grove
    
    case walton
    case warfield
    case warsaw
    case watterson_park
    case waverly
    case wayland
    case wellington
    case west_buechel
    case west_liberty
    case west_point
    case westwood
    case wheatcroft
    case wheelwright
    case white_plains
    case whitesburg
    case whitesville
    case wickliffe
    case wilder
    case wildwood
    case williamsburg
    case williamstown
    case willisburg
    case wilmore
    case winchester
    case windy_hills
    case wingo
    case woodburn
    case woodbury
    case woodland_hills
    case woodlawn
    case woodlawn_park
    case worthington
    case worthington_hills
    case worthville
    case wurtland
    
    public func getSubdivision() -> any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.kentucky
    }
    
    public func getRealName() -> String? {
        switch self {
        case .fleming_neon: return "Fleming-Neon"
        case .graymoor_devondale: return "Graymoor-Devondale"
        default: return nil
        }
    }
}