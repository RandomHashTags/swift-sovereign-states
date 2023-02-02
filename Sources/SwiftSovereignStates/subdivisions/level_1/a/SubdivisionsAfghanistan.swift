//
//  SubdivisionsAfghanistan.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public enum SubdivisionsAfghanistan : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Afghanistan
    case badakhshan
    case badghis
    case baghlan
    case balkh
    case bamyan
    case daykundi
    case farah
    case faryab
    case ghazni
    case ghor
    case helmand
    case herat
    case jowzjan
    case kabul
    case kandahar
    case kapisa
    case khost
    case kunar
    case kunduz
    case laghman
    case logar
    case nangarhar
    case nimruz
    case nuristan
    case paktia
    case paktika
    case panjshir
    case parwan
    case samangan
    case sar_e_pol
    case takhar
    case uruzgan
    case wardak
    case zabul
    
    public var country : Country {
        return Country.afghanistan
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public var real_name : String? {
        switch self {
        case .sar_e_pol: return "Sar-e Pol"
        default: return nil
        }
    }
}
