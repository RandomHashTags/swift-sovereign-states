//
//  SubdivisionsGreenland.swift
//  
//
//  Created by Evan Anderson on 2/11/23.
//

import Foundation

public enum SubdivisionsGreenland : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Greenland
    case avannaata
    case kujalleq
    case qeqertalik
    case qeqqata
    case sermersooq
    
    public var country : Locale.Region {
        return Locale.Region.greenland
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.municipalities
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .avannaata: return "en/a/a6/Avannaata-coat-of-arms"
        case .kujalleq: return "0/07/Flag_of_Kujalleq_Municipality%2C_Greenland"
        case .qeqertalik: return "en/e/ec/Qeqertalik-coat-of-arms"
        case .qeqqata: return "3/32/Flag_of_Qeqqata"
        case .sermersooq: return "d/d5/Flag_of_Sermersooq%2C_Denmark"
        }
    }
}
