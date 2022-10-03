//
//  SubdivisionsIvoryCoast.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public enum SubdivisionsIvoryCoast : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Ivory_Coast
    case bas_sassandra
    case comoe
    case denguele
    case goh_djiboua
    case lacs
    case lagunes
    case montagnes
    case sassandra_marahoue
    case savanes
    case vallee_du_bandama
    case woroba
    case zanzan
    
    case abidjan
    case yamoussoukro
    
    public func getCountry() -> Country {
        return Country.ivory_coast
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        switch self {
        case .abidjan,
                .yamoussoukro:
            return SovereignStateSubdivisionType.autonomous_districts
        default:
            return SovereignStateSubdivisionType.districts
        }
    }
    
    public func getRealName() -> String? {
        switch self {
        case .bas_sassandra: return "Bas-Sassandra"
        case .comoe: return "Comoé"
        case .denguele: return "Denguélé"
        case .goh_djiboua: return "Gôh-Djiboua"
        case .sassandra_marahoue: return "Sassandra-Marahoué"
        case .vallee_du_bandama: return "Vallée du Bandama"
        default: return nil
        }
    }
}
