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
    
    public var country : Country {
        return Country.france
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.regions
    }
    
    public var wikipedia_name : String? {
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
    
    public var wikipedia_url_suffix : String? {
        switch self {
        case .brittany,
                .normandy,
                .occitania:
            return "_(administrative_region)"
        default:
            return nil
        }
    }
}
