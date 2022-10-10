//
//  SubdivisionsMauritius.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsMauritius : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Mauritius | TODO: these are level-2 administrative divisions!
    case flacq
    case grand_port
    case moka
    case pamplemousses
    case plaines_wilhems
    case port_louis
    case riviere_du_rempart
    case riviere_noire
    case savanne
    
    public func getCountry() -> Country {
        return Country.mauritius
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
    
    public func getRealName() -> String? {
        switch self {
        case .riviere_du_rempart: return "Rivière du Rempart"
        case .riviere_noire: return "Rivière Noire"
        default: return nil
        }
    }
}
