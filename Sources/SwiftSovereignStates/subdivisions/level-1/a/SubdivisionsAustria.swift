//
//  SubdivisionsAustria.swift
//  
//
//  Created by Evan Anderson on 9/26/22.
//

import Foundation

public enum SubdivisionsAustria : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/States_of_Austria
    case burgenland
    case carinthia
    case lower_austria
    case salzburg
    case styria
    case tyrol
    case upper_austria
    case vienna
    case vorarlberg
    
    public var country : Locale.Region {
        return Locale.Region.austria
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.states
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .salzburg, .tyrol:
            return "_(" + type_suffix.lowercased() + ")"
        default:
            return nil
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .burgenland: return "2/29/Flag_of_Burgenland"
        case .carinthia: return "9/9b/Flag_of_Carinthia"
        case .lower_austria: return "0/06/Flag_of_Lower_Austria"
        case .salzburg: return "b/bf/Flag_of_Salzburg%2C_Vienna%2C_Vorarlberg"
        case .styria: return "e/ed/Flag_of_Styria"
        case .tyrol: return "2/25/Flag_of_Tirol_%28state%29"
        case .upper_austria: return "9/97/Flag_of_Tirol_and_Upper_Austria"
        case .vienna: return "b/bf/Flag_of_Salzburg%2C_Vienna%2C_Vorarlberg"
        case .vorarlberg: return "a/a7/Flag_of_Vorarlberg_%28state%29"
        }
    }
}
