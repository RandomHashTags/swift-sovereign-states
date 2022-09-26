//
//  CitiesUnitedStatesOhio.swift
//  
//
//  Created by Evan Anderson on 9/25/22.
//

import Foundation

public enum CitiesUnitedStatesOhio : String, CaseIterable, SovereignStateCity { // https://en.wikipedia.org/wiki/List_of_municipalities_in_Ohio
    case aberdeen
    case ada
    case adamsville
    case addyston
    case adelphi
    case adena
    case akron
    case albany
    case alexandria
    case alger
    case alliance
    case amanda
    case amberley
    case amesville
    case amherst
    case amsterdam
    case andover
    case anna
    case ansonia
    case antioch
    case antwerp
    case apple_creek
    case aquilla
    case arcadia
    case arcanum
    case archbold
    case arlington
    case arlington_heights
    case ashland
    case ashley
    case ashtabula
    case ashville
    case athalia
    case athens
    case attica
    case aurora
    case avon
    case avon_lake
    
    case bailey_lakes
    case bainbridge
    case bairdstown
    case baltic
    case baltimore
    case barberton
    case barnesville
    case barnhill
    case batavia
    case batesville
    case bay_view
    case bay_village
    case beach_city
    case beachwood
    case beallsville
    case beaver
    case beavercreek
    case beaverdam
    case bedford
    case bedford_heights
    case bellaire
    case bellbrook
    case belle_center
    case belle_valley
    case bellefontaine
    case bellevue
    case bellville
    case belmont
    case belmore
    case beloit
    case belpre
    case bentleyville
    case benton_ridge
    case berea
    case bergholz
    case berkey
    case berlin_heights
    case bethel
    case bethesda
    case bettsville
    case beverly
    case bexley
    case blakeslee
    case blanchester
    case bloomdale
    case bloomingburg
    case bloomingdale
    case bloomville
    case blue_ash
    case bluffton
    case bolivar
    case boston_heights
    case botkins
    case bowerston
    case bowersville
    case bowling_green
    case bradford
    case bradner
    case brady_lake
    case bratenahl
    case brecksville
    case bremen
    case brewster
    case brice
    case bridgeport
    case broadview_heights
    case brook_park
    case brooklyn
    case brooklyn_heights
    case brookside
    case brookville
    case broughton
    case brunswick
    case bryan
    case buchtel
    case buckeye_lake
    case buckland
    case bucyrus
    case burbank
    case burgoon
    case burkettsville
    case burton
    case butler
    case butlerville
    case byesville
    
    case cadiz
    case cairo
    case caldwell
    case caledonia
    case cambridge
    case camden
    case campbell
    case canal_fulton
    case canal_winchester
    case canfield
    case canton
    case cardington
    case carey
    case carlisle
    case carroll
    case carrollton
    case casstown
    case castalia
    case castine
    case catawba
    case cecil
    case cedarville
    case celina
    case centerburg
    case centerville_montgomery
    case centerville_gallia
    case chagrin_falls
    case chardon
    case chatfield
    case chauncey
    case chesapeake
    case cheshire
    case chesterhill
    case chesterville
    case cheviot
    case chickasaw
    case chillicothe
    case chilo
    case chippewa_lake
    case christiansburg
    case cincinnati
    case circleville
    case clarington
    case clarksburg
    case clarksville
    case clay_center
    case clayton
    case cleveland
    case cleveland_heights
    case cleves
    case clifton
    case clinton
    case cloverdale
    case clyde
    case coal_grove
    case coalton
    case coldwater
    case college_corner
    case columbiana
    case columbus
    case columbus_grove
    case commercial_point
    case conesville
    case congress
    case conneaut
    case continental
    case convoy
    case coolville
    case corning
    case cortland
    case corwin
    case coshocton
    case covington
    case craig_beach
    case crestline
    case creston
    case cridersville
    case crooksville
    case crown_city
    case cumberland
    case custar
    case cuyahoga_falls
    case cuyahoga_heights
    case cygnet
    
    case dalton
    case danville
    case darbyville
    case dayton
    case de_graff
    case deer_park
    case deersville
    case defiance
    case delaware
    case dellroy
    case delphos
    case delta
    case dennison
    case deshler
    case dexter_city
    case dillonvale
    case donnelsville
    case dover
    case doylestown
    case dresden
    case dublin
    case dunkirk
    case dupont
    
    case east_canton
    case east_cleveland
    case east_liverpool
    case east_palestine
    case east_sparta
    case eastlake
    case eaton
    case edgerton
    case edison
    case edon
    case eldorado
    case elgin
    case elida
    case elmore
    case elmwood_place
    case elyria
    case empire
    case englewood
    case enon
    case euclid
    case evendale
    
    case fairborn
    case fairfax
    case fairfield
    case fairlawn
    case fairport_harbor
    case fairview
    case fairview_park
    case farmersville
    case fayette
    case fayetteville
    case felicity
    case findlay
    case fletcher
    case florida
    case flushing
    case forest
    case forest_park
    case fort_jennings
    case fort_loramie
    case fort_recovery
    case fostoria
    case frankfort
    case franklin
    case frazeysburg
    case fredericksburg
    case fredericktown
    case freeport
    case fremont
    case fulton
    case fultonham
    
    case gahanna
    case galena
    case galion
    case gallipolis
    case gambier
    case gann
    case garfield_heights
    case garrettsville
    case gates_mills
    case geneva
    case geneva_on_the_lake
    case genoa
    case georgetown
    case germantown
    case gettysburg
    case gibsonburg
    case gilboa
    case girard
    case glandorf
    case glendale
    case glenford
    case glenmont
    case glenwillow
    case gloria_glens_park
    case glouster
    case gnadenhutten
    case golf_manor
    case gordon
    case grafton
    case grand_rapids
    case grand_river
    case grandview_heights
    case granville
    case gratiot
    case gratis
    case graysville
    case green
    case green_camp
    case green_springs
    case greenfield
    case greenhills
    case greenville
    case greenwich
    case grove_city
    case groveport
    case grover_hill
    
    case hamden
    case hamersville
    case hamilton
    case hamler
    case hanging_rock
    case hanover
    case hanoverton
    case harbor_view
    case harpster
    case harrisburg
    case harrison
    case harrisville
    case harrod
    case hartford
    case hartville
    case harveysburg
    case haskins
    case haviland
    case hayesville
    case heath
    case hebron
    case helena
    case hemlock
    case hicksville
    case higginsport
    case highland
    case highland_heights
    case highland_hills
    case hilliard
    case hills_and_dales
    case hillsboro
    case hiram
    case holgate
    case holiday_city
    case holland
    case hollansburg
    case holloway
    case holmesville
    case hopedale
    case hoytville
    case hubbard
    case huber_heights
    case hudson
    case hunting_valley
    case huntsville
    case huron
    
    case independence
    case irondale
    case ironton
    case ithaca
    
    case jackson
    case jackson_center
    case jacksonburg
    case jacksonville
    case jamestown
    case jefferson
    case jeffersonville
    case jenera
    case jeromesville
    case jerry_city
    case jerusalem
    case jewett
    case johnstown
    case junction_city
    
    case kalida
    case kelleys_island
    case kent
    case kenton
    case kettering
    case kettlersville
    case killbuck
    case kingston
    case kipton
    case kirby
    case kirkersville
    case kirtland
    case kirtland_hills
    
    case lafayette
    case lagrange
    case lakeline
    case lakemore
    case lakeview
    case lakewood
    case lancaster
    case larue
    case latty
    case laura
    case laurelville
    case lebanon
    case leesburg
    case leesville
    case leetonia
    case leipsic
    case lewisburg
    case lewisville
    case lexington
    case liberty_center
    case lima
    case limaville
    case lincoln_heights
    case lindsey
    case linndale
    case lisbon
    case lithopolis
    case lockbourne
    case lockington
    case lockland
    case lodi
    case logan
    case london
    case lorain
    case lordstown
    case lore_city
    case loudonville
    case louisville
    case loveland
    case lowell
    case lowellville
    case lower_salem
    case lucas
    case luckey
    case ludlow_falls
    case lynchburg
    case lyndhurst
    case lyons
    
    case macedonia
    case macksburg
    case madeira
    case madison
    case magnetic_springs
    case magnolia
    case maineville
    case malinta
    case malta
    case malvern
    case manchester
    case mansfield
    case mantua
    case maple_heights
    case marble_cliff
    case marblehead
    case marengo
    case mariemont
    case marietta
    case marion
    case marseilles
    case marshallville
    case martins_ferry
    case martinsburg
    case martinsville
    case marysville
    case mason
    case massillon
    case matamoras
    case maumee
    case mayfield
    case mayfield_heights
    case mcarthur
    case mcclure
    case mccomb
    case mcconnelsville
    case mcdonald
    case mcguffey
    case mechanicsburg
    case medina
    case melrose
    case mendon
    case mentor
    case mentor_on_the_lake
    case metamora
    case meyers_lake
    case miamisburg
    case middle_point
    case middleburg_heights
    case middlefield
    case middleport
    case middletown
    case midland
    case midvale
    case midway
    case mifflin
    case milan
    case milford
    case milford_center
    case millbury
    case milledgeville
    case miller_city
    case millersburg
    case millersport
    case millville
    case milton_center
    case miltonsburg
    case mineral_city
    case minerva
    case minerva_park
    case mingo_junction
    case minster
    case mogadore
    case monroe
    case monroeville
    case montezuma
    case montgomery
    case montpelier
    case moraine
    case moreland_hills
    case morral
    case morristown
    case morrow
    case moscow
    case mount_blanchard
    case mount_cory
    case mount_eaton
    case mount_gilead
    case mount_healthy
    case mount_orab
    case mount_pleasant
    case mount_sterling
    case mount_vernon
    case mount_victory
    case mowrystown
    case munroe_falls
    case murray_city
    case mutual
    
    case napoleon
    case nashville
    case navarre
    case nellie
    case nelsonville
    case nevada
    case neville
    case new_albany
    case new_alexandria
    case new_athens
    case new_bavaria
    case new_bloomington
    case new_boston
    case new_bremen
    case new_carlisle
    case new_concord
    case new_franklin
    case new_holland
    case new_knoxville
    case new_lebanon
    case new_lexington
    case new_london
    case new_madison
    case new_miami
    case new_middletown
    case new_paris
    case new_philadelphia
    case new_richmond
    case new_riegel
    case new_straitsville
    case new_vienna
    case new_washington
    case new_waterford
    case new_weston
    case newark
    case newburgh_heights
    case newcomerstown
    case newton_falls
    case newtown
    case ney
    case niles
    case north_baltimore
    case north_bend
    case north_canton
    case north_college_hill
    case north_fairfield
    case north_hampton
    case north_kingsville
    case north_lewisburg
    case north_olmsted
    case north_perry
    case north_randall
    case north_ridgeville
    case north_robinson
    case north_royalton
    case north_star
    case northfield
    case northwood
    case norton
    case norwalk
    case norwich
    case norwood
    
    case oak_harbor
    case oak_hill
    case oakwood_montgomery
    case oakwood_cuyahoga
    case oakwood_paulding
    case oberlin
    case obetz
    case octa
    case ohio_city
    case old_washington
    case olmsted_falls
    case ontario
    case orange
    case orangeville
    case oregon
    case orrville
    case orwell
    case osgood
    case ostrander
    case ottawa
    case ottawa_hills
    case ottoville
    case otway
    case owensville
    case oxford
    
    case painesville
    case palestine
    case pandora
    case parma
    case parma_heights
    case parral
    case pataskala
    case patterson
    case paulding
    case payne
    case peebles
    case pemberville
    case peninsula
    case pepper_pike
    case perry
    case perrysburg
    case perrysville
    case phillipsburg
    case philo
    case pickerington
    case piketon
    case pioneer
    case piqua
    case pitsburg
    case plain_city
    case plainfield
    case pleasant_city
    case pleasant_hill
    case pleasant_plain
    case pleasantville
    case plymouth
    case poland
    case polk
    case pomeroy
    case port_clinton
    case port_jefferson
    case port_washington
    case port_william
    case portage
    case portsmouth
    case potsdam
    case powell
    case powhatan_point
    case proctorville
    case prospect
    case put_in_bay
    
    case quaker_city
    case quincy
    
    case racine
    case rarden
    case ravenna
    case rawson
    case rayland
    case reading
    case reminderville
    case rendville
    case republic
    case reynoldsburg
    case richfield
    case richmond
    case richmond_heights
    case richwood
    case ridgeway
    case rio_grande
    case ripley
    case risingsun
    case rittman
    case riverlea
    case riverside
    case roaming_shores
    case rochester
    case rock_creek
    case rockford
    case rocky_ridge
    case rocky_river
    case rogers
    case rome
    case roseville
    case rossburg
    case rossford
    case roswell
    case rushsylvania
    case rushville
    case russells_point
    case russellville
    case russia
    case rutland
    
    case sabina
    case saint_clairsville
    case saint_marys
    case salem
    case salesville
    case salineville
    case sandusky
    case sarahsville
    case sardinia
    case savannah
    case scio
    case scott
    case seaman
    case sebring
    case senecaville
    case seven_hills
    case seven_mile
    case seville
    case shadyside
    case shaker_heights
    case sharonville
    case shawnee
    case shawnee_hills
    case sheffield
    case sheffield_lake
    case shelby
    case sherrodsville
    case sherwood
    case shiloh
    case shreve
    case sidney
    case silver_lake
    case silverton
    case sinking_spring
    case smithfield
    case smithville
    case solon
    case somerset
    case somerville
    case south_amherst
    case south_bloomfield
    case south_charleston
    case south_euclid
    case south_lebanon
    case south_point
    case south_russell
    case south_salem
    case south_solon
    case south_vienna
    case south_webster
    case south_zanesville
    case sparta
    case spencer
    case spencerville
    case spring_valley
    case springboro
    case springdale
    case springfield
    case st_bernard
    case st_henry
    case st_louisville
    case st_paris
    case stafford
    case steubenville
    case stockport
    case stone_creek
    case stoutsville
    case stow
    case strasburg
    case stratton
    case streetsboro
    case strongsville
    case struthers
    case stryker
    case sugar_bush_knolls
    case sugar_grove
    case sugarcreek
    case summerfield
    case summitville
    case sunbury
    case swanton
    case sycamore
    case sylvania
    case syracuse
    
    case tallmadge
    case tarlton
    case terrace_park
    case the_village_of_indian_hill
    case thornville
    case thurston
    case tiffin
    case tiltonsville
    case timberlake
    case tipp_city
    case tiro
    case toledo
    case tontogany
    case toronto
    case tremont_city
    case trenton
    case trimble
    case trotwood
    case troy
    case tuscarawas
    case twinsburg
    
    case uhrichsville
    case union
    case union_city
    case unionville_center
    case university_heights
    case upper_arlington
    case upper_sandusky
    case urbana
    case urbancrest
    case utica
    
    case valley_hi
    case valley_view
    case valleyview
    case van_buren
    case van_wert
    case vandalia
    case vanlue
    case venedocia
    case vermilion
    case verona
    case versailles
    case vinton
    
    case wadsworth
    case waite_hill
    case wakeman
    case walbridge
    case waldo
    case walton_hills
    case wapakoneta
    case warren
    case warrensville_heights
    case warsaw
    case washington_court_house
    case washingtonville
    case waterville
    case wauseon
    case waverly
    case wayne
    case wayne_lakes
    case waynesburg
    case waynesfield
    case waynesville
    case wellington
    case wellston
    case wellsville
    case west_alexandria
    case west_carrollton
    case west_elkton
    case west_farmington
    case west_jefferson
    case west_lafayette
    case west_leipsic
    case west_liberty
    case west_manchester
    case west_mansfield
    case west_millgrove
    case west_milton
    case west_rushville
    case west_salem
    case west_union
    case west_unity
    case westerville
    case westfield_center
    case westlake
    case weston
    case wharton
    case whitehall
    case whitehouse
    case wickliffe
    case wilkesville
    case willard
    case williamsburg
    case williamsport
    case willoughby
    case willoughby_hills
    case willowick
    case willshire
    case wilmington
    case wilmot
    case wilson
    case winchester
    case windham
    case wintersville
    case woodlawn
    case woodmere
    case woodsfield
    case woodstock
    case woodville
    case wooster
    case worthington
    case wren
    case wyoming
    
    case xenia
    
    case yankee_lake
    case yellow_springs
    case yorkshire
    case yorkville
    case youngstown
    
    case zaleski
    case zanesfield
    case zanesville
    case zoar
    
    public func getSubdivision() -> any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.ohio
    }
    
    public func getRealName() -> String? {
        switch self {
        case .centerville_montgomery, .centerville_gallia: return "Centerville"
        case .geneva_on_the_lake: return "Geneva-on-the-Lake"
        case .mentor_on_the_lake: return "Mentor-on-the-Lake"
        case .oakwood_montgomery, .oakwood_cuyahoga, .oakwood_paulding: return "Oakwood"
        case .put_in_bay: return "Put-in-Bay"
        case .st_bernard: return "St. Bernard"
        case .st_henry: return "St. Henry"
        case .st_louisville: return "St. Louisville"
        case .st_paris: return "St. Paris"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .centerville_gallia: return ",_Gallia_County,_Ohio"
        case .oakwood_montgomery: return ",_Montgomery_County,_Ohio"
        case .oakwood_paulding: return ",_Paulding_County,_Ohio"
        case .oakwood_cuyahoga: return ",_Cuyahoga_County,_Ohio"
        default: return getDefaultURLSuffix()
        }
    }
}