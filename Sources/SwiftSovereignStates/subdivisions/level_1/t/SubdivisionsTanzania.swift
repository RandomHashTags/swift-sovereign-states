//
//  SubdivisionsTanzania.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsTanzania : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Tanzania
    case arusha
    case dar_es_salaam
    case dodoma
    case geita
    case iringa
    case kagera
    case katavi
    case kigoma
    case kilimanjaro
    case lindi
    case manyara
    case mara
    case mbeya
    case mjini_magharibi
    case morogoro
    case mtwara
    case mwanza
    case njombe
    case pemba_north
    case pemba_south
    case pwani
    case rukwa
    case ruvuma
    case shinyanga
    case simiyu
    case singida
    case songwe
    case tabora
    case tanga
    case unguja_north
    case unguja_south
    
    public func getCountry() -> Country {
        return Country.tanzania
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
}
