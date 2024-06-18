//
//  SubdivisionsIvoryCoast.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public enum SubdivisionsIvoryCoast : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Ivory_Coast
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
    
    public var country : Locale.Region {
        return Locale.Region.côteDIvoire
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .abidjan,
                .yamoussoukro:
            return SovereignStateSubdivisionType.autonomous_districts
        default:
            return SovereignStateSubdivisionType.districts
        }
    }
}
