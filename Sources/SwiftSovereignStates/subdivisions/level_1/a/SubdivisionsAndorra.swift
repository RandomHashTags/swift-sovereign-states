//
//  SubdivisionsAndorra.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public enum SubdivisionsAndorra : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Parishes_of_Andorra
    case andorra_la_vella
    case canillo
    case encamp
    case escaldes_engordany
    case la_massana
    case ordino
    case sant_julia_de_loria
    
    public func getCountry() -> Country {
        return Country.andorra
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.parishes
    }
    
    public var real_name : String? {
        switch self {
        case .escaldes_engordany: return "Escaldes-Engordany"
        case .sant_julia_de_loria: return "Sant Julià de Lòria"
        default: return nil
        }
    }
    
    public var wikipedia_flag_url_svg_id : String? {
        switch self {
        case .andorra_la_vella: return "6/6a/Flag_of_Andorra_la_Vella"
        case .canillo: return "8/87/Flag_of_Canillo"
        case .encamp: return "f/f8/Flag_of_Encamp"
        case .escaldes_engordany: return "4/41/Bandera_de_Escaldes-Engordany"
        case .la_massana: return "b/b9/Flag_of_La_Massana"
        case .ordino: return "5/5e/Flag_of_Ordino"
        case .sant_julia_de_loria: return "0/02/Bandera_de_San_Julián_de_Loria"
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        return nil
    }
}
