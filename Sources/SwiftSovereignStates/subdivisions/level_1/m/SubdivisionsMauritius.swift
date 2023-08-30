//
//  SubdivisionsMauritius.swift
//  
//
//  Created by Evan Anderson on 10/4/22.
//

import Foundation

public enum SubdivisionsMauritius : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Mauritius | TODO: these are level-2 administrative divisions!
    case flacq
    case grand_port
    case moka
    case pamplemousses
    case plaines_wilhems
    case port_louis
    case riviere_du_rempart
    case riviere_noire
    case savanne
    
    public var country : Locale.Region {
        return Locale.Region.mauritius
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
}
