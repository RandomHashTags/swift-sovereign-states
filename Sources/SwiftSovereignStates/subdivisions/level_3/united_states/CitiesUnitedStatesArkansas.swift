//
//  CitiesUnitedStatesArkansas.swift
//  
//
//  Created by Evan Anderson on 9/25/22.
//

import Foundation

public enum CitiesUnitedStatesArkansas : String, CaseIterable, SovereignStateCity { // https://en.wikipedia.org/wiki/List_of_municipalities_in_Arkansas
    case adona
    case alexander
    case alicia
    case allport
    case alma
    case almyra
    case alpena
    case altheimer
    case altus
    case amagon
    case amity
    case anthonyville
    case antoine
    case arkadelphia
    case arkansas_city
    case ash_flat
    case ashdown
    case atkins
    case aubrey
    case augusta
    case austin
    case avoca
    
    case bald_knob
    case banks
    case barling
    case bassett
    case batesville
    case bauxite
    case bay
    case bearden
    case beaver
    case beebe
    case beedeville
    case bella_vista
    case bellefonte
    case belleville
    case ben_lomond
    case benton
    case bentonville
    case bergman
    case berryville
    case bethel_heights
    case big_flat
    case bigelow
    case biggers
    case birdsong
    case black_oak
    case black_rock
    case black_springs
    case blevins
    case blue_eye
    case blue_mountain
    case bluff_city
    case blytheville
    case bodcaw
    case bonanza
    case bono
    case booneville
    case bradford
    case bradley
    case branch
    case briarcliff
    case brinkley
    case brookland
    case bryant
    case buckner
    case bull_shoals
    case burdette
    
    case cabot
    case caddo_valley
    case caldwell
    case cale
    case calico_rock
    case calion
    case camden
    case cammack_village
    case campbell_station
    case caraway
    case carlisle
    case carthage
    case casa
    case cash
    case caulksville
    case cave_city
    case cave_springs
    case cedarville
    case centerton
    case central_city
    case charleston
    case cherokee_village
    case cherry_valley
    case chester
    case chidester
    case clarendon
    case clarkedale
    case clarksville
    case clinton
    case coal_hill
    case colt
    case concord
    case conway
    case corinth
    case corning
    case cotter
    case cotton_plant
    case cove
    case coy
    case crawfordsville
    case crossett
    case cushman
    
    case daisy
    case damascus
    case danville
    case dardanelle
    case datto
    case de_queen
    case de_valls_bluff
    case decatur
    case delaplaine
    case delight
    case dell
    case denning
    case dermott
    case des_arc
    case dewitt
    case diamond_city
    case diaz
    case dierks
    case donaldson
    case dover
    case dumas
    case dyer
    case dyess
    
    case earle
    case east_camden
    case edmondson
    case egypt
    case el_dorado
    case elaine
    case elkins
    case elm_springs
    case emerson
    case emmet
    case england
    case enola
    case etowah
    case eudora
    case eureka_springs
    case evening_shade
    case everton
    
    case fairfield_bay
    case fargo
    case farmington
    case fayetteville
    case felsenthal
    case fifty_six
    case fisher
    case flippin
    case fordyce
    case foreman
    case forrest_city
    case fort_smith
    case fouke
    case fountain_hill
    case fountain_lake
    case fourche
    case franklin
    case fredonia
    case friendship
    case fulton
    
    case garfield
    case garland
    case garner
    case gassville
    case gateway
    case gentry
    case georgetown
    case gilbert
    case gillett
    case gillham
    case gilmore
    case glenwood
    case goshen
    case gosnell
    case gould
    case grady
    case grannis
    case gravette
    case green_forest
    case greenbrier
    case greenland
    case greenway
    case greenwood
    case greers_ferry
    case griffithville
    case grubbs
    case guion
    case gum_springs
    case gurdon
    case guy
    
    case hackett
    case hamburg
    case hampton
    case hardy
    case harrell
    case harrisburg
    case harrison
    case hartford
    case hartman
    case haskell
    case hatfield
    case havana
    case haynes
    case hazen
    case heber_springs
    case hector
    case helena_west_helena
    case hermitage
    case hickory_ridge
    case higden
    case higginson
    case highfill
    case highland
    case hindsville
    case holland
    case holly_grove
    case hope
    case horatio
    case horseshoe_bend
    case horseshoe_lake
    case hot_springs
    case houston
    case hoxie
    case hughes
    case humnoke
    case humphrey
    case hunter
    case huntington
    case huntsville
    case huttig
    
    case imboden
    
    case jacksonport
    case jacksonville
    case jasper
    case jennette
    case jericho
    case jerome
    case johnson
    case joiner
    case jonesboro
    case judsonia
    case junction_city
    
    case keiser
    case kensett
    case keo
    case kibler
    case kingsland
    case knobel
    case knoxville
    
    case lafe
    case lagrange
    case lake_city
    case lake_view
    case lake_village
    case lakeview
    case lamar
    case lavaca
    case leachville
    case lead_hill
    case leola
    case lepanto
    case leslie
    case letona
    case lewisville
    case lexa
    case lincoln
    case little_flock
    case little_rock
    case lockesburg
    case london
    case lonoke
    case lonsdale
    case louann
    case lowell
    case luxora
    case lynn
    
    case madison
    case magazine
    case magness
    case magnolia
    case malvern
    case mammoth_spring
    case manila
    case mansfield
    case marianna
    case marie
    case marion
    case marked_tree
    case marmaduke
    case marshall
    case marvell
    case maumelle
    case mayflower
    case maynard
    case mccaskill
    case mccrory
    case mcdougal
    case mcgehee
    case mcnab
    case mcneil
    case mcrae
    case melbourne
    case mena
    case menifee
    case midland
    case midway
    case mineral_springs
    case minturn
    case mitchellville
    case monette
    case monticello
    case montrose
    case moorefield
    case moro
    case morrilton
    case morrison_bluff
    case mount_ida
    case mount_pleasant
    case mount_vernon
    case mountain_home
    case mountain_pine
    case mountain_view
    case mountainburg
    case mulberry
    case murfreesboro
    
    case nashville
    case newark
    case newport
    case nimmons
    case norfork
    case norman
    case norphlet
    case north_little_rock
    
    case o_kean
    case oak_grove
    case oak_grove_heights
    case oakhaven
    case oden
    case ogden
    case oil_trough
    case okolona
    case ola
    case omaha
    case oppelo
    case osceola
    case oxford
    case ozan
    case ozark
    
    case palestine
    case pangburn
    case paragould
    case paris
    case parkdale
    case parkin
    case patmos
    case patterson
    case pea_ridge
    case peach_orchard
    case perla
    case perry
    case perrytown
    case perryville
    case piggott
    case pindall
    case pine_bluff
    case pineville
    case plainview
    case pleasant_plains
    case plumerville
    case pocahontas
    case pollard
    case portia
    case portland
    case pottsville
    case powhatan
    case poyen
    case prairie_grove
    case prattsville
    case prescott
    case pyatt
    
    case quitman
    
    case ratcliff
    case ravenden
    case ravenden_springs
    case rector
    case redfield
    case reed
    case reyno
    case rison
    case rockport
    case roe
    case rogers
    case rondo
    case rose_bud
    case rosston
    case rudy
    case russell
    case russellville
    
    case salem
    case salesville
    case scranton
    case searcy
    case sedgwick
    case shannon_hills
    case sheridan
    case sherrill
    case sherwood
    case shirley
    case sidney
    case siloam_springs
    case smackover
    case smithville
    case south_lead_hill
    case southside
    case sparkman
    case springdale
    case springtown
    case st_charles
    case st_francis
    case st_joe
    case st_paul
    case stamps
    case star_city
    case stephens
    case strawberry
    case strong
    case stuttgart
    case subiaco
    case success
    case sulphur_rock
    case sulphur_springs
    case summit
    case sunset
    case swifton
    
    case taylor
    case texarkana
    case thornton
    case tillar
    case tinsman
    case tollette
    case tontitown
    case traskwood
    case trumann
    case tuckerman
    case tull
    case tupelo
    case turrell
    case twin_groves
    case tyronza
    
    case ulm
    
    case valley_springs
    case van_buren
    case vandervoort
    case victoria
    case vilonia
    case viola
    
    case wabbaseka
    case waldenburg
    case waldo
    case waldron
    case walnut_ridge
    case ward
    case warren
    case washington
    case watson
    case weiner
    case weldon
    case west_fork
    case west_memphis
    case west_point
    case western_grove
    case wheatley
    case whelen_springs
    case white_hall
    case wickes
    case widener
    case wiederkehr_village
    case williford
    case willisville
    case wilmar
    case wilmot
    case wilson
    case wilton
    case winchester
    case winslow
    case winthrop
    case wooster
    case wrightsville
    case wynne
    
    case yellville
    
    case zinc
    
    public func getSubdivision() -> any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.arkansas
    }
    
    public func getRealName() -> String? {
        switch self {
        case .fifty_six: return "Fifty-Six"
        case .helena_west_helena: return "Helena-West Helena"
        case .o_kean: return "O'Kean"
        case .st_charles: return "St. Charles"
        case .st_francis: return "St. Francis"
        case .st_joe: return "St. Joe"
        case .st_paul: return "St. Paul"
        default: return nil
        }
    }
}