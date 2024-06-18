//
//  SubdivisionsAngola.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public enum SubdivisionsAngola : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Angola
    case bengo
    case benguela
    case bie
    case cabinda
    case cuando_cubango
    case cuanza_norte
    case cuanza_sul
    case cunene
    case huambo
    case huila
    case luanda
    case lunda_norte
    case lunda_sul
    case malanje
    case moxico
    case namibe
    case uige
    case zaire
    
    public var country : Locale.Region {
        return Locale.Region.angola
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .cabinda: return "6/6c/Flag_of_Cabinda_Province"
        default: return nil
        }
    }
}
