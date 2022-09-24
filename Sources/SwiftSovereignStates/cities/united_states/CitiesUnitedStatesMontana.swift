//
//  CitiesUnitedStatesMontana.swift
//  
//
//  Created by Evan Anderson on 9/22/22.
//

import Foundation

public enum CitiesUnitedStatesMontana : String, CaseIterable, SovereignStateCity { // https://en.wikipedia.org/wiki/List_of_municipalities_in_Montana
    case alberton
    case anaconda
    
    case bainville
    case baker
    case bearcreek
    case belgrade
    case belt
    case big_sandy
    case big_timber
    case billings
    case boulder
    case bozeman
    case bridger
    case broadus
    case broadview
    case brockton
    case browning
    case butte
    
    case cascade
    case chester
    case chinook
    case choteau
    case circle
    case clyde_park
    case colstrip
    case columbia_falls
    case columbus
    case conrad
    case culbertson
    case cut_bank
    
    case darby
    case deer_lodge
    case denton
    case dillon
    case dodson
    case drummond
    case dutton
    
    case east_helena
    case ekalaka
    case ennis
    case eureka
    
    case fairfield
    case fairview
    case flaxville
    case forsyth
    case fort_benton
    case fort_peck
    case froid
    case fromberg
    
    case geraldine
    case glasgow
    case glendive
    case grass_range
    case great_falls
    
    case hamilton
    case hardin
    case harlem
    case harlowton
    case havre
    case helena
    case hingham
    case hobson
    case hot_springs
    case hysham
    
    case ismay
    
    case joliet
    case jordan
    case judith_gap
    
    case kalispell
    case kevin
    
    case laurel
    case lavina
    case lewistown
    case libby
    case lima
    case livingston
    case lodge_grass
    
    case malta
    case manhattan
    case medicine_lake
    case melstone
    case miles_city
    case missoula
    case moore
    
    case nashua
    case neihart
    
    case opheim
    case outlook
    
    case philipsburg
    case pinesdale
    case plains
    case plentywood
    case plevna
    case polson
    case poplar
    
    case red_lodge
    case rexford
    case richey
    case ronan
    case roundup
    case ryegate
    
    case saco
    case scobey
    case shelby
    case sheridan
    case sidney
    case st_ignatius
    case stanford
    case stevensville
    case sunburst
    case superior
    
    case terry
    case thompson_falls
    case three_forks
    case townsend
    case troy
    case twin_bridges
    
    case valier
    case virginia_city
    
    case walkerville
    case west_yellowstone
    case westby
    case white_sulphur_springs
    case whitefish
    case whitehall
    case wibaux
    case winifred
    case winnett
    case wolf_point
    
    public func getSubdivision() -> any SovereignStateSubdivision {
        return SubdivisionsUnitedStates.montana
    }
}
