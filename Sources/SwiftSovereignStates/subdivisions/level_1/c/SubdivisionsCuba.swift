//
//  SubdivisionsCuba.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsCuba : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Cuba
    case artemisa
    case camaguey
    case ciego_de_avila
    case cienfuegos
    case granma
    case guantanamo
    case holguin
    case isla_de_la_juventud
    case la_habana
    case las_tunas
    case matanzas
    case mayabeque
    case pinar_del_rio
    case sancti_spiritus
    case santiago_de_cuba
    case villa_clara
    
    public var country : Locale.Region {
        return Locale.Region.cuba
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .isla_de_la_juventud:
            return SovereignStateSubdivisionType.special_municipalities
        default:
            return SovereignStateSubdivisionType.provinces
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .isla_de_la_juventud:
            return nil
        default:
            return nil
        }
    }
}
