//
//  CitiesUnitedStatesSouthDakota.swift
//  
//
//  Created by Evan Anderson on 9/22/22.
//

import Foundation

public enum CitiesUnitedStatesSouthDakota : String, SovereignStateCity { // https://en.wikipedia.org/wiki/List_of_cities_in_South_Dakota
    case aberdeen
    case agar
    case akaska
    case albee
    case alcester
    case alexandria
    case alpena
    case altamont
    case andover
    case arlington
    case armour
    case artas
    case artesian
    case ashton
    case astoria
    case aurora
    case avon
    
    case badger
    case baltic
    case bancroft
    case batesland
    case belle_fourche
    case belvidere
    case beresford
    case big_stone_city
    case bison
    case blunt
    case bonesteel
    case bowdle
    case box_elder
    case bradley
    case brandon
    case brandt
    case brant_lake
    case brentford
    case bridgewater
    case bristol
    case britton
    case broadland
    case brookings
    case bruce
    case bryant
    case buffalo
    case buffalo_gap
    case burke
    case bushnell
    case butler
    
    case camp_crook
    case canistota
    case canova
    case canton
    case carthage
    case castlewood
    case cavour
    case centerville
    case central_city
    case chamberlain
    case chancellor
    case chelsea
    case claire_city
    case claremont
    case clark
    case clear_lake
    case colman
    case colome
    case colton
    case columbia
    case conde
    case corona
    case corsica
    case cottonwood
    case cresbard
    case crooks
    case custer
    
    case dallas
    case dante
    case davis
    case de_smet
    case deadwood
    case dell_rapids
    case delmont
    case dimock
    case doland
    case dolton
    case draper
    case dupree
    
    case eagle_butte
    case eden
    case edgemont
    case egan
    case elk_point
    case elkton
    case emery
    case erwin
    case estelline
    case ethan
    case eureka
    
    case fairburn
    case fairfax
    case fairview
    case faith
    case farmer
    case faulkton
    case flandreau
    case florence
    case fort_pierre
    case frankfort
    case frederick
    case freeman
    case fruitdale
    case fulton
    
    case garden_city
    case garretson
    case gary
    case gayville
    case geddes
    case gettysburg
    case glenham
    case goodwin
    case gregory
    case grenville
    case groton
    
    case harrisburg
    case harrold
    case hartford
    case hayti
    case hazel
    case hecla
    case henry
    case hermosa
    case herreid
    case herrick
    case hetland
    case highmore
    case hill_city
    case hillsview
    case hitchcock
    case hosmer
    case hot_springs
    case hoven
    case howard
    case hudson
    case humboldt
    case hurley
    case huron
    
    case interior
    case ipswich
    case irene
    case iroquois
    case isabel
    
    case java
    case jefferson
    
    case kadoka
    case kennebec
    case keystone
    case kimball
    case kranzburg
    
    case la_bolt
    case lake_andes
    case lake_city
    case lake_norden
    case lake_preston
    case lane
    case langford
    case lead
    case lebanon
    case lemmon
    case lennox
    case leola
    case lesterville
    case letcher
    case long_lake
    case lowry
    
    case madison
    case marion
    case martin
    case marvin
    case mcintosh
    case mclaughlin
    case mellette
    case menno
    case midland
    case milbank
    case miller
    case mission
    case mission_hill
    case mitchell
    case mobridge
    case monroe
    case montrose
    case morristown
    case mound_city
    case mount_vernon
    case murdo
    
    case naples
    case new_effington
    case new_underwood
    case new_witten
    case newell
    case nisland
    case north_sioux_city
    case northville
    case nunda
    
    case oacoma
    case oelrichs
    case oldham
    case olivet
    case onaka
    case onida
    case orient
    case ortley
    
    case parker
    case parkston
    case peever
    case philip
    case pickstown
    case piedmont
    case pierpont
    case pierre
    case plankinton
    case platte
    case pollock
    case presho
    case pringle
    case pukwana
    
    case quinn
    
    case ramona
    case rapid_city
    case ravinia
    case raymond
    case redfield
    case ree_heights
    case reliance
    case revillo
    case rockham
    case roscoe
    case rosholt
    case roslyn
    
    case salem
    case scotland
    case selby
    case seneca
    case sherman
    case sinai
    case sioux_falls
    case sisseton
    case south_shore
    case spearfish
    case spencer
    case springfield
    case st_francis
    case st_lawrence
    case stickney
    case stockholm
    case strandburg
    case stratford
    case sturgis
    case summerset
    case summit
    
    case tabor
    case tea
    case timber_lake
    case tolstoy
    case toronto
    case trent
    case tripp
    case tulare
    case turton
    case twin_brooks
    case tyndall
    
    case utica
    
    case valley_springs
    case veblen
    case verdon
    case vermillion
    case viborg
    case vienna
    case vilas
    case virgil
    case volga
    case volin
    
    case wagner
    case wakonda
    case wall
    case wallace
    case ward
    case warner
    case wasta
    case watertown
    case waubay
    case webster
    case wentworth
    case wessington
    case wessington_springs
    case westport
    case wetonka
    case white
    case white_lake
    case white_river
    case white_rock
    case whitewood
    case willow_lake
    case wilmot
    case winner
    case wolsey
    case wood
    case woonsocket
    case worthing
    
    case yale
    case yankton
    
    public func getSubdivision() -> any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.south_dakota
    }
}
