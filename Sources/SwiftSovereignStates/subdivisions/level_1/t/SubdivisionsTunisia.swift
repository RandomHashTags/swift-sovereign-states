//
//  SubdivisionsTunisia.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsTunisia : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Governorates_of_Tunisia
    case ariana
    case beja
    case ben_arous
    case bizerte
    case gabes
    case gafsa
    case jendouba
    case kairouan
    case kasserine
    case kebili
    case kef
    case mahdia
    case manouba
    case medenine
    case monastir
    case nabeul
    case sfax
    case sidi_bouzid
    case siliana
    case sousse
    case tataouine
    case tozeur
    case tunis
    case zaghouan
    
    public func getCountry() -> Country {
        return Country.tunisia
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.governorates
    }
    
    public func getRealName() -> String? {
        switch self {
        case .beja: return "Béja"
        case .gabes: return "Gabès"
        default: return nil
        }
    }
}
