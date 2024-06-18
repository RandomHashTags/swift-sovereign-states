//
//  SubdivisionsTimorLeste.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsTimorLeste : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Municipalities_of_East_Timor
    case aileu
    case ainaro
    case atauro
    case baucau
    case bobonaro
    case cova_lima
    case dili
    case ermera
    case lautem
    case liquica
    case manatuto
    case manufahi
    case viqueque
    
    case oecusse
    
    public var country : Locale.Region {
        return Locale.Region.timorLeste
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .oecusse:
            return SovereignStateSubdivisionType.special_administrative_regions
        default:
            return SovereignStateSubdivisionType.municipalities
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .aileu: return nil
        case .ainaro: return nil
        case .atauro: return nil
        case .baucau: return "d/d8/Flag_of_Baucau_%28municipality%29.png"
        case .bobonaro: return nil
        case .cova_lima: return nil
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
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .oecusse:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
