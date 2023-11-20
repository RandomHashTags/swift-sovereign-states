//
//  CitiesUnitedStatesArizona.swift
//  
//
//  Created by Evan Anderson on 9/23/22.
//

import Foundation

public enum CitiesUnitedStatesArizona : String, SovereignStateCity { // https://en.wikipedia.org/wiki/List_of_municipalities_in_Arizona | https://en.wikipedia.org/wiki/List_of_census-designated_places_in_Arizona
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
    
    // census-designated places
    case aguila
    case ajo
    case ak_chin
    case ak_chin_village
    case alamo_lake
    case ali_chuk
    case ali_chukson
    case ali_molina
    case alpine
    case amado
    case anegam
    case antares
    case anthem
    case arivaca
    case arivaca_junction
    case arizona_city
    case arizona_village
    case arlington
    case ash_fork
    case avenue_b_and_c
    case avra_valley
    case aztec
    case bagdad
    case bear_flat
    case beaver_dam
    case beaver_valley
    case beyerville
    case bitter_springs
    case black_canyon_city
    case blackwater
    case bluewater
    case bouse
    case bowie
    case brenda
    case bryce
    case buckshot
    case burnside
    case bylas
    case cactus_flats
    case cactus_forest
    case cameron
    case campo_bonito
    case cane_beds
    case canyon_day
    case carrizo
    case casa_blanca
    case casas_adobes
    case catalina
    case catalina_foothills
    case cedar_creek
    case centennial_park
    case central
    case central_heights_midland_city
    case charco
    case chiawuli_tak
    case chilchinbito
    case chinle
    case chloride
    case christopher_creek
    case chuichu
    case cibecue
    case cibola
    case cienega_springs
    case citrus_park
    case clacks_canyon
    case clay_springs
    case claypool
    case comobabi
    case concho
    case congress
    case copper_hill
    case cordes_lakes
    case cornfields
    case cornville
    case corona_de_tucson
    case cottonwood_apache
    case cowlic
    case crozier
    case crystal_beach
    case cutter
    case dateland
    case deer_creek
    case del_muerto
    case dennehotso
    case desert_hills
    case dilkon
    case dolan_springs
    case doney_park
    case donovan_estates
    case dragoon
    case drexel_heights
    case dripping_springs
    case drysdale
    case dudleyville
    case east_fork
    case east_globe
    case east_verde_estates
    case ehrenberg
    case el_capitan
    case el_prado_estates
    case elephant_head
    case elfrida
    case elgin
    case first_mesa
    case flowing_springs
    case flowing_wells
    case fort_apache
    case fort_defiance
    case fort_mohave
    case fort_thomas
    case fort_valley
    case fortuna_foothills
    case franklin
    case freedom_acres
    case gadsden
    case ganado
    case geronimo_estates
    case gila_crossing
    case gisela
    case gold_canyon
    case golden_shores
    case golden_valley
    case goodyear_village
    case grand_canyon_village
    case grand_canyon_west
    case greasewood
    case green_valley
    case greer
    case gu_oidak
    case hackberry
    case haigler_creek
    case haivana_nakya
    case hard_rock
    case heber_overgaard
    case hondah
    case hotevilla_bacavi
    case houck
    case hunter_creek
    case icehouse_canyon
    case indian_wells
    case jakes_corner
    case jeddito
    case joseph_city
    case kachina_village
    case kaibab
    case kaibito
    case kaka
    case katherine
    case kayenta
    case keams_canyon
    case kino_springs
    case klagetoh
    case ko_vaya
    case kohatk
    case kohls_ranch
    case komatke
    case kykotsmovi_village
    case la_paz_valley
    case lake_montezuma
    case lake_of_the_woods
    case lazy_y_u
    case lechee
    case leupp
    case linden
    case littlefield
    case littletown
    case low_mountain
    case lower_santan_village
    case lukachukai
    case lupton
    case maish_vaya
    case many_farms
    case maricopa_colony
    case martinez_lake
    case mayer
    case mcconnico
    case mcnary
    case mcneal
    case mead_ranch
    case meadview
    case mesa_del_caballo
    case mescal
    case mesquite_creek
    case miracle_valley
    case moccasin
    case moenkopi
    case mohave_valley
    case mojave_ranch_estates
    case morenci
    case morristown
    case mountainaire
    case munds_park
    case naco
    case nazlini
    case nelson
    case new_kingman_butler
    case new_river
    case nolic
    case north_fork
    case nutrioso
    case oak_springs
    case oatman
    case oljato_monument_valley
    case oracle
    case orange_grove_mobile_manor
    case oxbow_estates
    case padre_ranchitos
    case palominas
    case parker_strip
    case parks
    case paulden
    case peach_springs
    case peeples_valley
    case peridot
    case picacho
    case picture_rocks
    case pimaco_two
    case pinal
    case pine
    case pine_lake
    case pinedale
    case pinetop_country_club
    case pinion
    case pinion_pines
    case pirtleville
    case pisinemo
    case poston
    case queen_valley
    case rainbow_city
    case rancho_mesa_verde
    case red_mesa
    case red_rock_apache
    case red_rock_pinal
    case rillito
    case rincon_valley
    case rio_rico
    case rio_verde
    case rock_house
    case rock_point
    case roosevelt
    case rough_rock
    case round_rock
    case round_valley
    case rye
    case sacate_village
    case sacaton
    case sacaton_flats_village
    case saddlebrooke
    case salome
    case san_carlos
    case san_jose
    case san_manuel
    case san_miguel
    case san_simon
    case san_tan_valley
    case sanders
    case santa_cruz
    case santa_rosa
    case sawmill
    case scenic
    case seba_dalkai
    case second_mesa
    case sehili
    case seligman
    case sells
    case seven_mile
    case shongopovi
    case shonto
    case sierra_vista_southeast
    case six_shooter_canyon
    case so_hi
    case solomon
    case sonoita
    case south_komelik
    case spring_valley
    case st_david
    case st_johns_maricopa
    case st_michaels
    case stanfield
    case steamboat
    case stotonic_village
    case strawberry
    case summerhaven
    case summit
    case sun_city
    case sun_city_west
    case sun_lakes
    case sun_valley
    case sunizona
    case sunwest
    case supai
    case sweet_water_village
    case swift_trail_junction
    case tacna
    case tanque_verde
    case tat_momoli
    case teec_nos_pos
    case tees_toh
    case theba
    case three_points
    case tolani_lake
    case tonalea
    case tonopah
    case tonto_basin
    case tonto_village
    case top_of_the_world
    case topawa
    case topock
    case toyei
    case truxton
    case tsaile
    case tuba_city
    case tubac
    case tucson_estates
    case tumacacori_carmen
    case turkey_creek
    case upper_santan_village
    case utting
    case vail
    case vaiva_vo
    case valencia_west
    case valentine
    case valle
    case valle_vista
    case ventana
    case verde_village
    case vernon
    case vicksburg
    case village_of_oak_creek
    case wagon_wheel
    case wahak_hotrontk
    case wall_lane
    case walnut_creek
    case washington_park
    case wellton_hills
    case wenden
    case wet_camp_village
    case wheatfields
    case whetstone
    case whispering_pines
    case white_hills
    case white_mountain_lake
    case whitecone
    case whiteriver
    case why
    case wide_ruins
    case wikieup
    case wilhoit
    case williamson
    case willow_canyon
    case willow_valley
    case window_rock
    case winslow_west
    case wintersburg
    case wittmann
    case woodruff
    case yarnell
    case york
    case young
    case yucca
    
    public var subdivision : any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.arizona
    }
    
    public var capital : Self {
        return CitiesUnitedStatesArizona.phoenix
    }
    
    public var type : SovereignStateCityType {
        switch self {
        case .aguila,
                .ajo,
                .ak_chin,
                .ak_chin_village,
                .alamo_lake,
                .ali_chuk,
                .ali_chukson,
                .ali_molina,
                .alpine,
                .amado,
                .anegam,
                .antares,
                .anthem,
                .arivaca,
                .arivaca_junction,
                .arizona_city,
                .arizona_village,
                .arlington,
                .ash_fork,
                .avenue_b_and_c,
                .avra_valley,
                .aztec,
                .bagdad,
                .bear_flat,
                .beaver_dam,
                .beaver_valley,
                .beyerville,
                .bitter_springs,
                .black_canyon_city,
                .blackwater,
                .bluewater,
                .bouse,
                .bowie,
                .brenda,
                .bryce,
                .buckshot,
                .burnside,
                .bylas,
                .cactus_flats,
                .cactus_forest,
                .cameron,
                .campo_bonito,
                .cane_beds,
                .canyon_day,
                .carrizo,
                .casa_blanca,
                .casas_adobes,
                .catalina,
                .catalina_foothills,
                .cedar_creek,
                .centennial_park,
                .central,
                .central_heights_midland_city,
                .charco,
                .chiawuli_tak,
                .chilchinbito,
                .chinle,
                .chloride,
                .christopher_creek,
                .chuichu,
                .cibecue,
                .cibola,
                .cienega_springs,
                .citrus_park,
                .clacks_canyon,
                .clay_springs,
                .claypool,
                .comobabi,
                .concho,
                .congress,
                .copper_hill,
                .cordes_lakes,
                .cornfields,
                .cornville,
                .corona_de_tucson,
                .cottonwood_apache,
                .cowlic,
                .crozier,
                .crystal_beach,
                .cutter,
                .dateland,
                .deer_creek,
                .del_muerto,
                .dennehotso,
                .desert_hills,
                .dilkon,
                .dolan_springs,
                .doney_park,
                .donovan_estates,
                .dragoon,
                .drexel_heights,
                .dripping_springs,
                .drysdale,
                .dudleyville,
                .east_fork,
                .east_globe,
                .east_verde_estates,
                .ehrenberg,
                .el_capitan,
                .el_prado_estates,
                .elephant_head,
                .elfrida,
                .elgin,
                .first_mesa,
                .flowing_springs,
                .flowing_wells,
                .fort_apache,
                .fort_defiance,
                .fort_mohave,
                .fort_thomas,
                .fort_valley,
                .fortuna_foothills,
                .franklin,
                .freedom_acres,
                .gadsden,
                .ganado,
                .geronimo_estates,
                .gila_crossing,
                .gisela,
                .gold_canyon,
                .golden_shores,
                .golden_valley,
                .goodyear_village,
                .grand_canyon_village,
                .grand_canyon_west,
                .greasewood,
                .green_valley,
                .greer,
                .gu_oidak,
                .hackberry,
                .haigler_creek,
                .haivana_nakya,
                .hard_rock,
                .heber_overgaard,
                .hondah,
                .hotevilla_bacavi,
                .houck,
                .hunter_creek,
                .icehouse_canyon,
                .indian_wells,
                .jakes_corner,
                .jeddito,
                .joseph_city,
                .kachina_village,
                .kaibab,
                .kaibito,
                .kaka,
                .katherine,
                .kayenta,
                .keams_canyon,
                .kino_springs,
                .klagetoh,
                .ko_vaya,
                .kohatk,
                .kohls_ranch,
                .komatke,
                .kykotsmovi_village,
                .la_paz_valley,
                .lake_montezuma,
                .lake_of_the_woods,
                .lazy_y_u,
                .lechee,
                .leupp,
                .linden,
                .littlefield,
                .littletown,
                .low_mountain,
                .lower_santan_village,
                .lukachukai,
                .lupton,
                .maish_vaya,
                .many_farms,
                .maricopa_colony,
                .martinez_lake,
                .mayer,
                .mcconnico,
                .mcnary,
                .mcneal,
                .mead_ranch,
                .meadview,
                .mesa_del_caballo,
                .mescal,
                .mesquite_creek,
                .miracle_valley,
                .moccasin,
                .moenkopi,
                .mohave_valley,
                .mojave_ranch_estates,
                .morenci,
                .morristown,
                .mountainaire,
                .munds_park,
                .naco,
                .nazlini,
                .nelson,
                .new_kingman_butler,
                .new_river,
                .nolic,
                .north_fork,
                .nutrioso,
                .oak_springs,
                .oatman,
                .oljato_monument_valley,
                .oracle,
                .orange_grove_mobile_manor,
                .oxbow_estates,
                .padre_ranchitos,
                .palominas,
                .parker_strip,
                .parks,
                .paulden,
                .peach_springs,
                .peeples_valley,
                .peridot,
                .picacho,
                .picture_rocks,
                .pimaco_two,
                .pinal,
                .pine,
                .pine_lake,
                .pinedale,
                .pinetop_country_club,
                .pinion,
                .pinion_pines,
                .pirtleville,
                .pisinemo,
                .poston,
                .queen_valley,
                .rainbow_city,
                .rancho_mesa_verde,
                .red_mesa,
                .red_rock_apache,
                .red_rock_pinal,
                .rillito,
                .rincon_valley,
                .rio_rico,
                .rio_verde,
                .rock_house,
                .rock_point,
                .roosevelt,
                .rough_rock,
                .round_rock,
                .round_valley,
                .rye,
                .sacate_village,
                .sacaton,
                .sacaton_flats_village,
                .saddlebrooke,
                .salome,
                .san_carlos,
                .san_jose,
                .san_manuel,
                .san_miguel,
                .san_simon,
                .san_tan_valley,
                .sanders,
                .santa_cruz,
                .santa_rosa,
                .sawmill,
                .scenic,
                .seba_dalkai,
                .second_mesa,
                .sehili,
                .seligman,
                .sells,
                .seven_mile,
                .shongopovi,
                .shonto,
                .sierra_vista_southeast,
                .six_shooter_canyon,
                .so_hi,
                .solomon,
                .sonoita,
                .south_komelik,
                .spring_valley,
                .st_david,
                .st_johns_maricopa,
                .st_michaels,
                .stanfield,
                .steamboat,
                .stotonic_village,
                .strawberry,
                .summerhaven,
                .summit,
                .sun_city,
                .sun_city_west,
                .sun_lakes,
                .sun_valley,
                .sunizona,
                .sunwest,
                .supai,
                .sweet_water_village,
                .swift_trail_junction,
                .tacna,
                .tanque_verde,
                .tat_momoli,
                .teec_nos_pos,
                .tees_toh,
                .theba,
                .three_points,
                .tolani_lake,
                .tonalea,
                .tonopah,
                .tonto_basin,
                .tonto_village,
                .top_of_the_world,
                .topawa,
                .topock,
                .toyei,
                .truxton,
                .tsaile,
                .tuba_city,
                .tubac,
                .tucson_estates,
                .tumacacori_carmen,
                .turkey_creek,
                .upper_santan_village,
                .utting,
                .vail,
                .vaiva_vo,
                .valencia_west,
                .valentine,
                .valle,
                .valle_vista,
                .ventana,
                .verde_village,
                .vernon,
                .vicksburg,
                .village_of_oak_creek,
                .wagon_wheel,
                .wahak_hotrontk,
                .wall_lane,
                .walnut_creek,
                .washington_park,
                .wellton_hills,
                .wenden,
                .wet_camp_village,
                .wheatfields,
                .whetstone,
                .whispering_pines,
                .white_hills,
                .white_mountain_lake,
                .whitecone,
                .whiteriver,
                .why,
                .wide_ruins,
                .wikieup,
                .wilhoit,
                .williamson,
                .willow_canyon,
                .willow_valley,
                .window_rock,
                .winslow_west,
                .wintersburg,
                .wittmann,
                .woodruff,
                .yarnell,
                .york,
                .young,
                .yucca:
            return SovereignStateCityType.census_designated_place
        default:
            return SovereignStateCityType.city
        }
    }
}
