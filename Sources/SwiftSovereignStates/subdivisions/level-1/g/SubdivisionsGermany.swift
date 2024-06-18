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
    
    public var country : Locale.Region {
        return Locale.Region.germany
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.states
    }
    
    public var wikipediaName : String? {
        switch self {
        case .mecklenburg_western_pomerania:
            return "Mecklenburg-Vorpommern"
        default:
            return nil
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .bremen:
            return "_(state)"
        default:
            return nil
        }
    }
}
