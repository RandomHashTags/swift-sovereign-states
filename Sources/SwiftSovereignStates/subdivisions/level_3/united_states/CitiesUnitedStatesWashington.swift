//
//  CitiesUnitedStatesWashington.swift
//  
//
//  Created by Evan Anderson on 9/23/22.
//

import Foundation

public enum CitiesUnitedStatesWashington : String, SovereignStateCity { // https://en.wikipedia.org/wiki/List_of_municipalities_in_Washington
    case aberdeen
    case airway_heights
    case algona
    case anacortes
    case arlington
    case asotin
    case auburn
    
    case bainbridge_island
    case battle_ground
    case bellevue
    case bellingham
    case benton_city
    case bingen
    case black_diamond
    case blaine
    case bonney_lake
    case bothell
    case bremerton
    case brewster
    case bridgeport
    case brier
    case buckley
    case burien
    case burlington
    
    case camas
    case carnation
    case cashmere
    case castle_rock
    case centralia
    case chehalis
    case chelan
    case cheney
    case chewelah
    case clarkston
    case cle_elum
    case clyde_hill
    case colfax
    case college_place
    case colville
    case connell
    case cosmopolis
    case covington
    
    case davenport
    case dayton
    case deer_park
    case des_moines
    case dupont
    case duvall
    
    case east_wenatchee
    case edgewood
    case edmonds
    case electric_city
    case ellensburg
    case elma
    case entiat
    case enumclaw
    case ephrata
    case everett
    case everson
    
    case federal_way
    case ferndale
    case fife
    case fircrest
    case forks
    
    case george
    case gig_harbor
    case gold_bar
    case goldendale
    case grand_coulee
    case grandview
    case granger
    case granite_falls
    
    case harrington
    case hoquiam
    
    case ilwaco
    case issaquah
    
    case kahlotus
    case kalama
    case kelso
    case kenmore
    case kennewick
    case kent
    case kettle_falls
    case kirkland
    case kittitas
    
    case la_center
    case lacey
    case lake_forest_park
    case lake_stevens
    case lakewood
    case langley
    case leavenworth
    case liberty_lake
    case long_beach
    case longview
    case lynden
    case lynnwood
    
    case mabton
    case maple_valley
    case marysville
    case mattawa
    case mccleary
    case medical_lake
    case medina
    case mercer_island
    case mesa
    case mill_creek
    case millwood
    case milton
    case monroe
    case montesano
    case morton
    case moses_lake
    case mossyrock
    case mount_vernon
    case mountlake_terrace
    case moxee
    case mukilteo
    
    case napavine
    case newcastle
    case newport
    case nooksack
    case normandy_park
    case north_bend
    case north_bonneville
    
    case oak_harbor
    case oakville
    case ocean_shores
    case okanogan
    case olympia
    case omak
    case oroville
    case orting
    case othello
    
    case pacific
    case palouse
    case pasco
    case pateros
    case pomeroy
    case port_angeles
    case port_orchard
    case port_townsend
    case poulsbo
    case prescott
    case prosser
    case pullman
    case puyallup
    
    case quincy
    
    case rainier
    case raymond
    case redmond
    case renton
    case republic
    case richland
    case ridgefield
    case ritzville
    case rock_island
    case roslyn
    case roy
    case royal_city
    case ruston
    
    case sammamish
    case seatac
    case seattle
    case sedro_woolley
    case selah
    case sequim
    case shelton
    case shoreline
    case snohomish
    case snoqualmie
    case soap_lake
    case south_bend
    case spangle
    case spokane
    case spokane_valley
    case sprague
    case stanwood
    case stevenson
    case sultan
    case sumas
    case sumner
    case sunnyside
    
    case tacoma
    case tekoa
    case tenino
    case tieton
    case toledo
    case tonasket
    case toppenish
    case tukwila
    case tumwater
    
    case union_gap
    case university_place
    
    case vader
    case vancouver
    
    case waitsburg
    case walla_walla
    case wapato
    case warden
    case washougal
    case wenatchee
    case west_richland
    case westport
    case white_salmon
    case winlock
    case woodinville
    case woodland
    case woodway
    
    case yakima
    case yelm
    
    case zillah
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.washington
    }
}
