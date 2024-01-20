//
//  SubdivisionsItaly.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsItaly : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Italy
    case abruzzo
    case aosta_valley
    case apulia
    case basilicata
    case calabria
    case campania
    case emilia_romagna
    case friuli_venezla_giulia
    case lazio
    case liguria
    case lombardy
    case marche
    case molise
    case piedmont
    case sardinia
    case sicily
    case trentino_south_tyrol
    case tuscany
    case umbria
    case veneto
    
    public var country : Locale.Region {
        return Locale.Region.italy
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .aosta_valley,
                .friuli_venezla_giulia,
                .sardinia,
                .sicily,
                .trentino_south_tyrol:
            return SovereignStateSubdivisionType.autonomous_regions
        default:
            return SovereignStateSubdivisionType.regions
        }
    }
    
    public var wikipediaName : String? {
        switch self {
        case .trentino_south_tyrol: return "Trentino-Alto_Adige/Südtirol"
        default: return nil
        }
    }
    
    public var wikipediaURLSuffix : String? {
        return nil
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .abruzzo: return "4/45/Flag_of_Abruzzo"
        case .aosta_valley: return "9/90/Flag_of_Valle_d%27Aosta"
        case .apulia: return "b/b8/Flag_of_Apulia"
        case .basilicata: return "8/8e/Flag_of_Basilicata"
        case .calabria: return "8/8b/Flag_of_Calabria"
        case .campania: return "c/c5/Flag_of_Campania"
        case .emilia_romagna: return "7/77/Flag_of_Emilia-Romagna_%28de_facto%29"
        case .friuli_venezla_giulia: return "5/55/Flag_of_Friuli-Venezia_Giulia"
        case .lazio: return "e/e1/Flag_of_Lazio"
        case .liguria: return "8/88/Flag_of_Liguria"
        case .lombardy: return "e/ea/Flag_of_Lombardy"
        case .marche: return "0/07/Flag_of_Marche"
        case .molise: return "8/84/Flag_of_Molise"
        case .piedmont: return "b/b9/Flag_of_Piedmont"
        case .sardinia: return "4/4e/Flag_of_Sardinia%2C_Italy"
        case .sicily: return "8/84/Sicilian_Flag"
        case .trentino_south_tyrol: return "7/7f/Flag_of_Trentino-South_Tyrol"
        case .tuscany: return "f/f2/Flag_of_Tuscany"
        case .umbria: return "c/cc/Flag_of_Umbria"
        case .veneto: return "d/d5/Flag_of_Veneto"
        }
    }
}
