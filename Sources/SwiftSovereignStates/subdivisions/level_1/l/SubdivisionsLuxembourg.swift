//
//  SubdivisionsLuxembourg.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public enum SubdivisionsLuxembourg : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Cantons_of_Luxembourg
    case capellen
    case clervaux
    case diekirch
    case echternach
    case esch_sur_alzette
    case grevenmacher
    case luxembourg
    case mersch
    case redange
    case remich
    case vianden
    case wiltz
    
    public var country : Locale.Region {
        return Locale.Region.luxembourg
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.cantons
    }
    
    public var wikipediaURLPrefix : String? {
        return "Canton_of_"
    }
    public var wikipediaURLSuffix : String? {
        return nil
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .capellen: return "7/7b/Armoiries_de_Septfontaines_1"
        case .clervaux: return "2/2c/Armoiries_Clervaux_2"
        case .diekirch: return "3/30/Coat_of_arms_diekirch_luxbrg.png"
        case .echternach: return "2/28/Coat_of_arms_echternach_luxbrg"
        case .esch_sur_alzette: return "c/ce/Coat_of_arms_esch_alzette_luxbrg.png"
        case .grevenmacher: return "4/4b/Coat_of_arms_grevenmacher_luxbrg.png"
        case .luxembourg: return "d/db/Coat_of_arms_Luxembourg_City.png"
        case .mersch: return "5/54/Armoiries_de_Mersch_1"
        case .redange: return "5/54/Armoiries_de_Mersch_1"
        case .remich: return "3/39/Remich_%28canton%29_coat_of_arms.png"
        case .vianden: return "e/e1/Armoiries_de_Nassau_2"
        case .wiltz: return "b/bb/Armoiries_de_Wiltz_1"
        }
    }
}
