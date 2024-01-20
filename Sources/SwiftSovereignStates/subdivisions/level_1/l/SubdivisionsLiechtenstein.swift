//
//  SubdivisionsLiechtenstein.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public enum SubdivisionsLiechtenstein : String, SovereignStateSubdivision {
    case balzers
    case eschen
    case gamprin
    case mauren
    case planken
    case ruggell
    case schaan
    case schellenberg
    case triesen
    case triesenberg
    case vaduz
    
    public var country : Locale.Region {
        return Locale.Region.liechtenstein
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.municipalities
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        default:
            return nil
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .balzers: return "e/e0/Flag_of_Balzers_Liechtenstein-1"
        case .eschen: return "5/52/Flag_of_Eschen_Liechtenstein-1"
        case .gamprin: return "8/88/Flag_of_Gamprin_Liechtenstein-1"
        case .mauren: return "0/04/Flag_of_Mauren_Liechtenstein-1"
        case .planken: return "5/5c/Flag_of_Planken_Liechtenstein-1"
        case .ruggell: return "3/3d/Flag_of_Ruggell_Liechtenstein-1"
        case .schaan: return "6/65/Flag_of_Schaan_Liechtenstein-1"
        case .schellenberg: return "e/e2/Flag_of_Schellenberg_Liechtenstein-1"
        case .triesen: return "d/d4/Flag_of_Triesen_Liechtenstein-1"
        case .triesenberg: return "4/4f/Flag_of_Triesenberg_Liechtenstein-1"
        case .vaduz: return "4/43/Flag_of_Vaduz_Liechtenstein-1"
        }
    }
}
