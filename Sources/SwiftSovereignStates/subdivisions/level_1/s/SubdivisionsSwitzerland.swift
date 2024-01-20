//
//  SubdivisionsSwitzerland.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsSwitzerland : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Cantons_of_Switzerland
    case aargau
    case appenzell_ausserrhoden
    case appenzell_innerrhoden
    case basel_landschaft
    case basel_stadt
    case bern
    case fribourg
    case geneva
    case glarus
    case grisons
    case jura
    case lucerne
    case neuchatel
    case nidwalden
    case obwalden
    case schaffhausen
    case schwyz
    case solothurn
    case st_gallen
    case thurgau
    case ticino
    case uri
    case valais
    case vaud
    case zug
    case zurich
    
    public var country : Locale.Region {
        return Locale.Region.switzerland
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.cantons
    }
    
    public var wikipediaURLPrefix : String? {
        switch self {
        case .aargau,
                .appenzell_ausserrhoden,
                .appenzell_innerrhoden,
                .basel_landschaft,
                .basel_stadt,
                .grisons,
                .nidwalden,
                .obwalden,
                .thurgau,
                .ticino,
                .vaud,
                .valais:
            return nil
        default:
            return "Canton_of_"
        }
    }
    
    public var wikipediaURLSuffix : String? {
        return nil
    }
}
