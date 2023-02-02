//
//  CitiesUnitedStatesNorthDakota.swift
//  
//
//  Created by Evan Anderson on 9/22/22.
//

import Foundation

public enum CitiesUnitedStatesNorthDakota : String, SovereignStateCity { // https://en.wikipedia.org/wiki/List_of_cities_in_North_Dakota
    case abercrombie
    case adams
    case alamo
    case alexander
    case alice
    case almont
    case alsen
    case ambrose
    case amenia
    case amidon
    case anamoose
    case aneta
    case antler
    case ardoch
    case argusville
    case arnegard
    case arthur
    case ashley
    case ayr
    
    case balfour
    case balta
    case barney
    case bathgate
    case beach
    case belfield
    case benedict
    case bergen
    case berlin
    case berthold
    case beulah
    case binford
    case bisbee
    case bismarck
    case bottineau
    case bowbells
    case bowdon
    case bowman
    case braddock
    case briarwood
    case brinsmade
    case brocket
    case buchanan
    case bucyrus
    case buffalo
    case burlington
    case butte
    case buxton
    
    case calio
    case calvin
    case cando
    case canton_city
    case carpio
    case carrington
    case carson
    case casselton
    case cathay
    case cavalier
    case cayuga
    case center
    case christine
    case churchs_ferry
    case cleveland
    case clifford
    case cogswell
    case coleharbor
    case colfax
    case columbus
    case conway
    case cooperstown
    case courtenay
    case crary
    case crosby
    case crystal
    
    case davenport
    case dawson
    case dazey
    case deering
    case des_lacs
    case devils_lake
    case dickey
    case dickinson
    case dodge
    case donnybrook
    case douglas
    case drake
    case drayton
    case dunn_center
    case dunseith
    case dwight
    
    case edgeley
    case edinburg
    case edmore
    case egeland
    case elgin
    case ellendale
    case elliott
    case emerado
    case enderlin
    case epping
    case esmond
    
    case fairdale
    case fairmount
    case fargo
    case fessenden
    case fingal
    case finley
    case flasher
    case flaxton
    case forbes
    case fordville
    case forest_river
    case forman
    case fort_ransom
    case fort_yates
    case fortuna
    case fredonia
    case frontier
    case fullerton
    
    case gackle
    case galesburg
    case gardena
    case gardner
    case garrison
    case gascoyne
    case gilby
    case gladstone
    case glen_ullin
    case glenburn
    case glenfield
    case golden_valley
    case golva
    case goodrich
    case grace_city
    case grafton
    case grand_forks
    case grandin
    case grano
    case granville
    case great_bend
    case grenora
    case gwinner
    
    case hague
    case halliday
    case hamberg
    case hamilton
    case hampden
    case hankinson
    case hannaford
    case hannah
    case hansboro
    case harvey
    case harwood
    case hatton
    case havana
    case haynes
    case hazelton
    case hazen
    case hebron
    case hettinger
    case hillsboro
    case hoople
    case hope
    case horace
    case hunter
    case hurdsfield
    
    case inkster
    
    case jamestown
    case jud
    
    case karlsruhe
    case kathryn
    case kenmare
    case kensal
    case kief
    case killdeer
    case kindred
    case knox
    case kramer
    case kulm
    
    case lakota
    case lamoure
    case landa
    case langdon
    case lankin
    case lansford
    case larimore
    case lawton
    case leal
    case leeds
    case lehr
    case leith
    case leonard
    case lidgerwood
    case lignite
    case lincoln
    case linton
    case lisbon
    case litchville
    case loma
    case loraine
    case ludden
    case luverne
    
    case maddock
    case makoti
    case mandan
    case mantador
    case manvel
    case mapleton
    case marion
    case marmarth
    case martin
    case max
    case maxbass
    case mayville
    case mcclusky
    case mchenry
    case mcville
    case medina
    case medora
    case mercer
    case michigan_city
    case milnor
    case milton
    case minnewaukan
    case minot
    case minto
    case mohall
    case monango
    case montpelier
    case mooreton
    case mott
    case mountain
    case munich
    case mylo
    
    case napoleon
    case neche
    case nekoma
    case new_england
    case new_leipzig
    case new_rockford
    case new_salem
    case new_town
    case newburg
    case niagara
    case nome
    case noonan
    case north_river
    case northwood
    
    case oakes
    case oberon
    case oriska
    case osnabrock
    case overly
    case oxbow
    
    case page
    case palermo
    case park_river
    case parshall
    case pekin
    case pembina
    case perth
    case petersburg
    case pettibone
    case pick_city
    case pillsbury
    case pingree
    case pisek
    case plaza
    case portal
    case portland
    case powers_lake
    case prairie_rose
    
    case ray
    case reeder
    case regan
    case regent
    case reiles_acres
    case reynolds
    case rhame
    case richardton
    case riverdale
    case robinson
    case rocklake
    case rogers
    case rolette
    case rolla
    case ross
    case rugby
    case ruso
    case rutland
    case ryder
    
    case sanborn
    case sarles
    case sawyer
    case scranton
    case selfridge
    case sentinel_butte
    case sharon
    case sheldon
    case sherwood
    case sheyenne
    case sibley
    case solen
    case souris
    case south_heart
    case spiritwood_lake
    case springbrook
    case st_john
    case st_thomas
    case stanley
    case stanton
    case starkweather
    case steele
    case strasburg
    case streeter
    case surrey
    case sykeston
    
    case tappen
    case taylor
    case thompson
    case tioga
    case tolley
    case tolna
    case tower_city
    case towner
    case turtle_lake
    case tuttle
    
    case underwood
    case upham
    
    case valley_city
    case velva
    case venturia
    case verona
    case voltaire
    
    case wahpeton
    case walcott
    case wales
    case walhalla
    case warwick
    case washburn
    case watford_city
    case west_fargo
    case westhope
    case white_earth
    case wildrose
    case williston
    case willow_city
    case wilton
    case wimbledon
    case wing
    case wishek
    case wolford
    case woodworth
    case wyndmere
    
    case york
    
    case zap
    case zeeland
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.north_dakota
    }
    
    public var real_name : String? {
        switch self {
        case .reiles_acres: return "Reile's Acres"
        default: return nil
        }
    }
}
