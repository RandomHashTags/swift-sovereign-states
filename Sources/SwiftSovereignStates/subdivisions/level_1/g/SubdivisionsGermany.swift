//
//  SubdivisionsGermany.swift
//  
//
//  Created by Evan Anderson on 7/26/22.
//

import Foundation

public enum SubdivisionsGermany : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/States_of_Germany
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
    
    public func getCountry() -> Country {
        return Country.germany
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.states
    }
    
    public func getConditionalName() -> String? {
        switch self {
        case .mecklenburg_western_pomerania:
            return "Mecklenburg-Vorpommern"
        default:
            return nil
        }
    }
    
    public func getRealName() -> String? {
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
            return "(state)"
        default:
            return ""
        }
    }
}
