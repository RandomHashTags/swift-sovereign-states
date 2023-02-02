//
//  CitiesUnitedStatesNewMexico.swift
//  
//
//  Created by Evan Anderson on 9/25/22.
//

import Foundation

public enum CitiesUnitedStatesNewMexico : String, SovereignStateCity { // https://en.wikipedia.org/wiki/List_of_municipalities_in_New_Mexico
    case alamogordo
    case albuquerque
    case angel_fire
    case anthony
    case artesia
    case aztec
    
    case bayard
    case belen
    case bernalillo
    case bloomfield
    case bosque_farms
    
    case capitan
    case carlsbad
    case carrizozo
    case causey
    case chama
    case cimarron
    case clayton
    case cloudcroft
    case clovis
    case columbus
    case corona
    case corrales
    case cuba
    
    case deming
    case des_moines
    case dexter
    case dora
    
    case eagle_nest
    case edgewood
    case elephant_butte
    case elida
    case encino
    case espanola
    case estancia
    case eunice
    
    case farmington
    case floyd
    case folsom
    case fort_sumner
    
    case gallup
    case grady
    case grants
    case grenville
    
    case hagerman
    case hatch
    case hobbs
    case hope
    case house
    case hurley
    
    case jal
    case jemez_springs
    
    case kirtland
    
    case lake_arthur
    case las_cruces
    case las_vegas
    case logan
    case lordsburg
    case los_alamos
    case los_lunas
    case los_ranchos_de_albuquerque
    case loving
    case lovington
    
    case magdalena
    case maxwell
    case melrose
    case mesilla
    case milan
    case moriarty
    case mosquero
    case mountainair
    
    case pecos
    case peralta
    case portales
    
    case questa
    
    case raton
    case red_river
    case reserve
    case rio_communities
    case rio_rancho
    case roswell
    case roy
    case ruidoso
    case ruidoso_downs
    
    case san_jon
    case san_ysidro
    case santa_clara
    case santa_fe
    case santa_rosa
    case silver_city
    case socorro
    case springer
    case sunland_park
    
    case taos
    case taos_ski_valley
    case tatum
    case texico
    case tijeras
    case truth_or_consequences
    case tucumcari
    case tularosa
    
    case vaughn
    case virden
    
    case wagon_mound
    case willard
    case williamsburg
    
    public func getSubdivision() -> any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.new_mexico
    }
}
