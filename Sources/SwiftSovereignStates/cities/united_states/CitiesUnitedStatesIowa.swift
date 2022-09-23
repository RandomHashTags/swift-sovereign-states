//
//  CitiesUnitedStatesIowa.swift
//  
//
//  Created by Evan Anderson on 9/22/22.
//

import Foundation

public enum CitiesUnitedStatesIowa : String, CaseIterable, SovereignStateCity { // https://en.wikipedia.org/wiki/List_of_cities_in_Iowa
    case ackley
    case ackworth
    case adair
    case adel
    case afton
    case agency
    case ainsworth
    case akron
    case albert_city
    case albia
    case albion
    case alburnett
    case alden
    case alexander
    case algona
    case alleman
    case allerton
    case allison
    case alta
    case alta_vista
    case alton
    case altoona
    case alvord
    case ames
    case anamosa
    case andover
    case andrew
    case anita
    case ankeny
    case anthon
    case aplington
    case arcadia
    case archer
    case aredale
    case arion
    case arispe
    case arlington
    case armstrong
    case arnolds_park
    case arthur
    case asbury
    case ashton
    case aspinwall
    case atalissa
    case atkins
    case atlantic
    case auburn
    case audubon
    case aurelia
    case aurora
    case avoca
    case ayrshire
    
    case badger
    case bagley
    case baldwin
    case balltown
    case bancroft
    case bankston
    case barnes_city
    case barnum
    case bassett
    case batavia
    case battle_creek
    case baxter
    case bayard
    case beacon
    case beaconsfield
    case beaman
    case beaver
    case bedford
    case belle_plaine
    case bellevue
    case belmond
    case bennett
    case benton
    case berkley
    case bernard
    case bertram
    case bettendorf
    case bevington
    case birmingham
    case blairsburg
    case blairstown
    case blakesburg
    case blanchard
    case blencoe
    case blockton
    case bloomfield
    case blue_grass
    case bode
    case bonaparte
    case bondurant
    case boone
    case bouton
    case boxholm
    case boyden
    case braddyville
    case bradgate
    case brandon
    case brayton
    case breda
    case bridgewater
    case brighton
    case bristow
    case britt
    case bronson
    case brooklyn
    case brunsville
    case buck_grove
    case buckeye
    case buffalo
    case buffalo_center
    case burlington
    case burt
    case bussey
    
    case calamus
    case callender
    case calmar
    case calumet
    case camanche
    case cambridge
    case cantril
    case carbon
    case carlisle
    case carpenter
    case carroll
    case carson
    case carter_lake
    case cascade
    case casey
    case castalia
    case castana
    case cedar_falls
    case cedar_rapids
    case center_point
    case centerville
    case central_city
    case centralia
    case chariton
    case charles_city
    case charlotte
    case charter_oak
    case chatsworth
    case chelsea
    case cherokee
    case chester
    case chillicothe
    case churdan
    case cincinnati
    case clare
    case clarence
    case clarinda
    case clarion
    case clarksville
    case clayton
    case clear_lake
    case clearfield
    case cleghorn
    case clemons
    case clermont
    case clinton
    case clio
    case clive
    case clutier
    case coburg
    case coggon
    case coin
    case colesburg
    case colfax
    case college_springs
    case collins
    case colo
    case columbus_city
    case columbus_junction
    case colwell
    case conesville
    case conrad
    case conway
    case coon_rapids
    case coppock
    case coralville
    case corning
    case correctionville
    case corwith
    case corydon
    case cotter
    case coulter
    case council_bluffs
    case craig
    case crawfordsville
    case crescent
    case cresco
    case creston
    case cromwell
    case crystal_lake
    case cumberland
    case cumming
    case curlew
    case cushing
    case cylinder
    
    case dakota_city
    case dallas_center
    case dana
    case danbury
    case danville
    case davenport
    case davis_city
    case dawson
    case dayton
    case de_soto
    case decatur_city
    case decorah
    case dedham
    case deep_river
    case defiance
    case delaware
    case delhi
    case delmar
    case deloit
    case delphos
    case delta
    case denison
    case denver
    case derby
    case des_moines
    case dewitt
    case dexter
    case diagonal
    case dickens
    case dike
    case dixon
    case dolliver
    case donahue
    case donnellson
    case doon
    case dougherty
    case dow_city
    case dows
    case drakesville
    case dubuque
    case dumont
    case duncombe
    case dundee
    case dunkerton
    case dunlap
    case durango
    case durant
    case dyersville
    case dysart
    
    case eagle_grove
    case earlham
    case earling
    case earlville
    case early
    case east_peru
    case eddyville
    case edgewood
    case elberon
    case eldon
    case eldora
    case eldridge
    case elgin
    case elk_horn
    case elk_run_heights
    case elkader
    case elkhart
    case elkport
    case elliott
    case ellston
    case ellsworth
    case elma
    case ely
    case emerson
    case emmetsburg
    case epworth
    case essex
    case estherville
    case evansdale
    case everly
    case exira
    case exline
    
    case fairbank
    case fairfax
    case fairfield
    case farley
    case farmersburg
    case farmington
    case farnhamville
    case farragut
    case fayette
    case fenton
    case ferguson
    case fertile
    case floris
    case floyd
    case fonda
    case fontanelle
    case forest_city
    case fort_atkinson
    case fort_dodge
    case fort_madison
    case fostoria
    case franklin
    case fraser
    case fredericksburg
    case frederika
    case fredonia
    case fremont
    case fruitland
    
    case galt
    case galva
    case garber
    case garden_grove
    case garnavillo
    case garner
    case garrison
    case garwin
    case geneva
    case george
    case gibson
    case gilbert
    case gilbertville
    case gillett_grove
    case gilman
    case gilmore_city
    case gladbrook
    case glenwood
    case glidden
    case goldfield
    case goodell
    case goose_lake
    case gowrie
    case graettinger
    case graf
    case grafton
    case grand_junction
    case grand_mound
    case grand_river
    case grandview
    case granger
    case grant
    case granville
    case gravity
    case gray
    case greeley
    case greene
    case greenfield
    case greenville
    case grimes
    case grinnell
    case griswold
    case grundy_center
    case gruver
    case guernsey
    case guthrie_center
    case guttenberg
    
    case halbur
    case hamburg
    case hamilton
    case hampton
    case hancock
    case hanlontown
    case hansell
    case harcourt
    case hardy
    case harlan
    case harper
    case harpers_ferry
    case harris
    case hartford
    case hartley
    case hartwick
    case harvey
    case hastings
    case havelock
    case haverhill
    case hawarden
    case hawkeye
    case hayesville
    case hazleton
    case hedrick
    case henderson
    case hepburn
    case hiawatha
    case hills
    case hillsboro
    case hinton
    case holland
    case holstein
    case holy_cross
    case hopkinton
    case hornick
    case hospers
    case houghton
    case hubbard
    case hudson
    case hull
    case humboldt
    case humeston
    case huxley
    
    case ida_grove
    case imogene
    case independence
    case indianola
    case inwood
    case ionia
    case iowa_city
    case iowa_falls
    case ireton
    case irwin
    
    case jackson_junction
    case jamaica
    case janesville
    case jefferson
    case jesup
    case jewell_junction
    case johnston
    case joice
    case jolley
    
    case kalona
    case kamrar
    case kanawha
    case kellerton
    case kelley
    case kellogg
    case kensett
    case keokuk
    case keomah_village
    case keosauqua
    case keota
    case keswick
    case keystone
    case kimballton
    case kingsley
    case kinross
    case kirkman
    case kirkville
    case kiron
    case klemme
    case knierim
    case knoxville
    
    case la_motte
    case la_porte_city
    case lacona
    case ladora
    case lake_city
    case lake_mills
    case lake_park
    case lake_view
    case lakeside
    case lakota
    case lambs_grove
    case lamoni
    case lamont
    case lanesboro
    case lansing
    case larchwood
    case larrabee
    case latimer
    case laurel
    case laurens
    case lawler
    case lawton
    case le_claire
    case le_grand
    case le_mars
    case le_roy
    case ledyard
    case lehigh
    case leighton
    case leland
    case lenox
    case leon
    case lester
    case letts
    case lewis
    case libertyville
    case lidderdale
    case lime_springs
    case lincoln
    case linden
    case lineville
    case linn_grove
    case lisbon
    case liscomb
    case little_rock
    case little_sioux
    case livermore
    case lockridge
    case logan
    case lohrville
    case lone_rock
    case lone_tree
    case long_grove
    case lorimor
    case lost_nation
    case lovilia
    case low_moor
    case lowden
    case lu_verne
    case luana
    case lucas
    case luther
    case luxemburg
    case luzerne
    case lynnville
    case lytton
    
    case macedonia
    case macksburg
    case madrid
    case magnolia
    case maharishi_vedic_city
    case malcom
    case mallard
    case maloy
    case malvern
    case manchester
    case manilla
    case manly
    case manning
    case manson
    case mapleton
    case maquoketa
    case marathon
    case marble_rock
    case marcus
    case marengo
    case marion
    case marne
    case marquette
    case marshalltown
    case martelle
    case martensdale
    case martinsburg
    case marysville
    case mason_city
    case masonville
    case massena
    case matlock
    case maurice
    case maxwell
    case maynard
    case maysville
    case mccallsburg
    case mccausland
    case mcclelland
    case mcgregor
    case mcintire
    case mechanicsville
    case mediapolis
    case melbourne
    case melcher_dallas
    case melrose
    case melvin
    case menlo
    case meriden
    case merrill
    case meservey
    case middletown
    case miles
    case milford
    case millersburg
    case millerton
    case milo
    case milton
    case minburn
    case minden
    case mingo
    case missouri_valley
    case mitchell
    case mitchellville
    case modale
    case mondamin
    case monmouth
    case monona
    case monroe
    case montezuma
    case monticello
    case montour
    case montrose
    case moorhead
    case moorland
    case moravia
    case morley
    case morning_sun
    case morrison
    case moulton
    case mount_auburn
    case mount_ayr
    case mount_pleasant
    case mount_vernon
    case moville
    case murray
    case muscatine
    case mystic
    
    case name
    case nashua
    case nemaha
    case neola
    case nevada
    case new_albin
    case new_hampton
    case new_hartford
    case new_liberty
    case new_london
    case new_market
    case new_providence
    case new_sharon
    case new_vienna
    case new_virginia
    case newell
    case newhall
    case newton
    case nichols
    case nodaway
    case nora_springs
    case north_buena_vista
    case north_english
    case north_liberty
    case north_washington
    case northboro
    case northwood
    case norwalk
    case norway
    case numa
    
    case oakland
    case oakland_acres
    case oakville
    case ocheyedan
    case odebolt
    case oelwein
    case ogden
    case okoboji
    case olds
    case olin
    case ollie
    case onawa
    case onslow
    case orange_city
    case orchard
    case orient
    case orleans
    case osage
    case osceola
    case oskaloosa
    case ossian
    case osterdock
    case otho
    case oto
    case ottosen
    case ottumwa
    case owasa
    case oxford
    case oxford_junction
    case oyens
    
    case pacific_junction
    case packwood
    case palmer
    case palo
    case panama
    case panora
    case panorama_park
    case parkersburg
    case parnell
    case paton
    case patterson
    case paullina
    case pella
    case peosta
    case perry
    case persia
    case peterson
    case pierson
    case pilot_mound
    case pioneer
    case pisgah
    case plainfield
    case plano
    case pleasant_hill
    case pleasant_plain
    case pleasanton
    case pleasantville
    case plover
    case plymouth
    case pocahontas
    case polk_city
    case pomeroy
    case popejoy
    case portsmouth
    case postville
    case prairie_city
    case prairieburg
    case prescott
    case preston
    case primghar
    case princeton
    case promise_city
    case protivin
    case pulaski
    
    case quasqueton
    case quimby
    
    case radcliffe
    case rake
    case ralston
    case randalia
    case randall
    case randolph
    case rathbun
    case raymond
    case readlyn
    case reasnor
    case red_oak
    case redding
    case redfield
    case reinbeck
    case rembrandt
    case remsen
    case renwick
    case rhodes
    case riceville
    case richland
    case rickardsville
    case ricketts
    case ridgeway
    case rinard
    case ringsted
    case rippey
    case riverdale
    case riverside
    case riverton
    case robins
    case rock_falls
    case rock_rapids
    case rock_valley
    case rockford
    case rockwell
    case rockwell_city
    case rodman
    case rodney
    case roland
    case rolfe
    case rome
    case rose_hill
    case rossie
    case rowan
    case rowley
    case royal
    case rudd
    case runnells
    case russell
    case ruthven
    case rutland
    case ryan
    
    case sabula
    case sac_city
    case sageville
    case salem
    case salix
    case sanborn
    case sandyville
    case scarville
    case schaller
    case schleswig
    case scranton
    case searsboro
    case sergeant_bluff
    case seymour
    case shambaugh
    case shannon_city
    case sharpsburg
    case sheffield
    case shelby
    case sheldahl
    case sheldon
    case shell_rock
    case shellsburg
    case shenandoah
    case sherrill
    case shueyville
    case sibley
    case sidney
    case sigourney
    case silver_city
    case sioux_center
    case sioux_city
    case sioux_rapids
    case slater
    case sloan
    case smithland
    case soldier
    case solon
    case somers
    case south_english
    case spencer
    case spillville
    case spirit_lake
    case spragueville
    case spring_hill
    case springbrook
    case springville
    case sq_mi
    case st_ansgar
    case st_anthony
    case st_charles
    case st_donatus
    case st_lucas
    case st_marys
    case st_olaf
    case st_paul
    case stacyville
    case stanhope
    case stanley
    case stanton
    case stanwood
    case state_center
    case steamboat_rock
    case stockport
    case stockton
    case storm_lake
    case story_city
    case stout
    case stratford
    case strawberry_point
    case struble
    case stuart
    case sully
    case sumner
    case superior
    case sutherland
    case swaledale
    case swan
    case swea_city
    case swisher
    
    case tabor
    case tama
    case templeton
    case tennant
    case terril
    case thayer
    case thompson
    case thor
    case thornburg
    case thornton
    case thurman
    case tiffin
    case tingley
    case tipton
    case titonka
    case toledo
    case toronto
    case traer
    case treynor
    case tripoli
    case truesdale
    case truro
    case turin
    
    case udell
    case underwood
    case union
    case unionville
    case university_heights
    case university_park
    case urbana
    case urbandale
    case ute
    
    case vail
    case valeria
    case van_horne
    case van_meter
    case van_wert
    case varina
    case ventura
    case victor
    case villisca
    case vincent
    case vining
    case vinton
    case volga
    
    case wadena
    case wahpeton
    case walcott
    case walford
    case walker
    case wall_lake
    case wallingford
    case walnut
    case wapello
    case washington
    case washta
    case waterloo
    case waterville
    case waucoma
    case waukee
    case waukon
    case waverly
    case wayland
    case webb
    case webster
    case webster_city
    case weldon
    case wellman
    case wellsburg
    case welton
    case wesley
    case west_bend
    case west_branch
    case west_burlington
    case west_chester
    case west_des_moines
    case west_liberty
    case west_okoboji
    case west_point
    case west_union
    case westfield
    case westgate
    case westphalia
    case westside
    case westwood
    case what_cheer
    case wheatland
    case whiting
    case whittemore
    case whitten
    case willey
    case williams
    case williamsburg
    case williamson
    case wilton
    case windsor_heights
    case winfield
    case winterset
    case winthrop
    case wiota
    case woden
    case woodbine
    case woodburn
    case woodward
    case woolstock
    case worthington
    case wyoming
    
    case yale
    case yetter
    case yorktown
    
    case zearing
    case zwingle
    
    public func getSubdivision() -> any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.iowa
    }
    
    public func getRealName() -> String? {
        switch self {
        case .melcher_dallas: return "Melcher-Dallas"
        default: return nil
        }
    }
}
