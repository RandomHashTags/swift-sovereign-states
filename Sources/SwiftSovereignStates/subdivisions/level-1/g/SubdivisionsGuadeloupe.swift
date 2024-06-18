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
    
    public var country : Locale.Region {
        return Locale.Region.guadeloupe
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.communes
    }
    
    public var wikipediaURLSuffix : String? {
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
