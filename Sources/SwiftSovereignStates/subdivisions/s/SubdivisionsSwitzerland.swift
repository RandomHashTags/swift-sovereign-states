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
    case appenzell_innerhoden
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
    
    public func getCountry() -> Country {
        return Country.switzerland
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.cantons
    }
    
    public func getRealName() -> String? {
        switch self {
        case .basel_landschaft: return "Basel-Landschaft"
        case .basel_stadt: return "Basel-Stadt"
        case .neuchatel: return "Neuchâtel"
        case .st_gallen: return "St. Gallen"
        case .zurich: return "Zürich"
        default: return nil
        }
    }
    
    public func getWikipediaURLPrefix() -> String? {
        switch self {
        case .aargau,
                .appenzell_ausserrhoden,
                .appenzell_innerhoden,
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
    
    public func getWikipediaURLSuffix(typeSuffix: String) -> String? {
        return ""
    }
}
