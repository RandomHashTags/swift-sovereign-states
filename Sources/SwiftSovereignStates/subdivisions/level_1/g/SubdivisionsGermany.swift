//
//  SubdivisionsGermany.swift
//  
//
//  Created by Evan Anderson on 7/26/22.
//

import Foundation

public enum SubdivisionsGermany : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/States_of_Germany
    case baden_wurttemberg
    case bavaria
    case berlin
    case brandenburg
    case bremen
    case hamburg
    case hesse
    case lower_saxony
    case mecklenburg_western_pomerania
    case north_rhine_westphalia
    case rhineland_palatinate
    case saarland
    case saxony
    case saxony_anhalt
    case schleswig_holstein
    case thuringia
    
    public var country : Country {
        return Country.germany
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.states
    }
    
    public var wikipedia_name : String? {
        switch self {
        case .mecklenburg_western_pomerania:
            return "Mecklenburg-Vorpommern"
        default:
            return nil
        }
    }
    
    public var real_name : String? {
        switch self {
        case .baden_wurttemberg: return "Baden-Württemberg"
        case .mecklenburg_western_pomerania: return "Mecklenburg-Western Pomerania"
        case .north_rhine_westphalia: return "North Rhine-Westphalia"
        case .rhineland_palatinate: return "Rhineland-Palatinate"
        case .saxony_anhalt: return "Saxony-Anhalt"
        case .schleswig_holstein: return "Schleswig-Holstein"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .bremen:
            return "_(state)"
        default:
            return nil
        }
    }
}
