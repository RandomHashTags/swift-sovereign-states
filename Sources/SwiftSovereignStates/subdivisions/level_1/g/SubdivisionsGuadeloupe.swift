//
//  SubdivisionsGuadeloupe.swift
//  
//
//  Created by Evan Anderson on 7/26/22.
//

import Foundation

public enum SubdivisionsGuadeloupe : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Guadeloupe#Governance
    case anse_bertrand
    case baie_manhault
    case baillif
    case basse_terre
    case bouillante
    case capesterre_belle_eau
    case capesterre_de_marie_galante
    case deshaies
    case gourbeyre
    case goyave
    case grand_bourg
    case la_desirade
    case lamentin
    case le_gosier
    case le_moule
    case les_abymes
    case morne_a_l_eau
    case petit_bourg
    case petit_canal
    case pointe_a_pitre
    case pointe_noire
    case port_louis
    case saint_claude
    case saint_francois
    case saint_louis
    case sainte_anne
    case sainte_rose
    case terre_de_bas
    case terre_de_haut
    case trois_rivieres
    case vieux_fort
    case vieux_habitants
    
    public var country : Country {
        return Country.guadeloupe
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.communes
    }
    
    public var real_name : String? {
        switch self {
        case .anse_bertrand: return "Anse-Bertrand"
        case .baie_manhault: return "Baie-Mahault"
        case .basse_terre: return "Basse-Terre"
        case .capesterre_belle_eau: return "Capesterre-Belle-Eau"
        case .capesterre_de_marie_galante: return "Capesterre-de-Marie-Galante"
        case .grand_bourg: return "Grand-Bourg"
        case .la_desirade: return "La Désirade"
        case .morne_a_l_eau: return "Morne-à-l'Eau"
        case .petit_bourg: return "Petit-Bourg"
        case .petit_canal: return "Petit-Canal"
        case .pointe_a_pitre: return "Pointe-à-Pitre"
        case .pointe_noire: return "Pointe-Noire"
        case .port_louis: return "Port-Louis"
        case .saint_claude: return "Saint-Claude"
        case .saint_francois: return "Saint-François"
        case .saint_louis: return "Saint-Louis"
        case .sainte_anne: return "Sainte-Anne"
        case .sainte_rose: return "Sainte-Rose"
        case .terre_de_bas: return "Terre-de-Bas"
        case .terre_de_haut: return "Terre-de-Haut"
        case .trois_rivieres: return "Trois-Rivières"
        case .vieux_fort: return "Vieux-Fort"
        case .vieux_habitants: return "Vieux-Habitants"
        default: return nil
        }
    }
    
    public var wikipedia_url_suffix : String? {
        switch self {
        case .la_desirade:
            return "_(commune)"
        case .pointe_noire,
                .port_louis,
                .saint_claude,
                .saint_francois,
                .saint_louis,
                .sainte_anne,
                .sainte_rose,
                .trois_rivieres,
                .vieux_fort:
            return ",_Guadeloupe"
        default:
            return nil
        }
    }
}
