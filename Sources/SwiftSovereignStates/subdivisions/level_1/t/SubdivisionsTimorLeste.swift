//
//  SubdivisionsTimorLeste.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsTimorLeste : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Municipalities_of_East_Timor
    case aileu
    case ainaro
    case atauro
    case baucau
    case bobonaro
    case covalima
    case dili
    case ermera
    case lautem
    case liquica
    case manatuto
    case manufahi
    case viqueque
    
    case oecusse
    
    public func getCountry() -> Country {
        return Country.timor_leste
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        switch self {
        case .oecusse:
            return SovereignStateSubdivisionType.special_administrative_regions
        default:
            return SovereignStateSubdivisionType.municipalities
        }
    }
    
    public func getRealName() -> String? {
        switch self {
        case .lautem: return "Lautém"
        case .liquica: return "Liquiçá"
        default: return nil
        }
    }
    
    public func getFlagURLWikipediaSVGID() -> String? {
        switch self {
        case .aileu: return nil
        case .ainaro: return nil
        case .atauro: return nil
        case .baucau: return "d/d8/Flag_of_Baucau_%28municipality%29.png"
        case .bobonaro: return nil
        case .covalima: return nil
        case .dili: return nil
        case .ermera: return nil
        case .lautem: return nil
        case .liquica: return nil
        case .manatuto: return nil
        case .manufahi: return nil
        case .viqueque: return nil
        
        case .oecusse: return "b/bc/Raeoa.png"
        }
    }
}
