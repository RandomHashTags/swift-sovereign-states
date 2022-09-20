//
//  SubdivisionsFrance.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsFrance : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_France
    case auvergne_rhone_alpes
    case burgundy_free_county
    case brittany
    case centre_loire_valley
    case corsica
    case great_east
    case upper_france
    case isle_of_france
    case normandy
    case new_aquitaine
    case occitania
    case loire_countries
    case provence_alps_french_riviera
    
    public func getCountry() -> Country {
        return Country.france
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public func getConditionalName() -> String? {
        switch self {
        case .burgundy_free_county: return "Bourgogne-Franche-Comté"
        case .great_east: return "Grand Est"
        case .upper_france: return "Hauts-de-France"
        case .isle_of_france: return "Île-de-France"
        case .new_aquitaine: return "Nouvelle-Aquitaine"
        case .loire_countries: return "Pays de la Loire"
        case .provence_alps_french_riviera: return "Provence-Alpes-Côte d'Azur"
        default: return nil
        }
    }
    
    public func getRealName() -> String? {
        switch self {
        case .auvergne_rhone_alpes: return "Auvergne-Rhône-Alps"
        case .burgundy_free_county: return "Burgundy-Free County"
        case .centre_loire_valley: return "Centre-Loire Valley"
        case .provence_alps_french_riviera: return "Provence-Alps-French Riviera"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix(typeSuffix: String) -> String? {
        switch self {
        case .brittany,
                .normandy,
                .occitania:
            return "(administrative_region)"
        default:
            return ""
        }
    }
}
