//
//  SubdivisionsNigeria.swift
//  
//
//  Created by Evan Anderson on 9/21/22.
//

import Foundation

public enum SubdivisionsNigeria : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/States_of_Nigeria
    case abia
    case adamawa
    case akwa_ibom
    case anambra
    case bauchi
    case bayelsa
    case benue
    case borno
    case cross_river
    case delta
    case ebonyi
    case edo
    case ekiti
    case enugu
    case gombe
    case imo
    case jigawa
    case kaduna
    case kano
    case katsina
    case kebbi
    case kogi
    case kwara
    case lagos
    case nasarawa
    case niger
    case ogun
    case ondo
    case osun
    case oyo
    case plateau
    case rivers
    case sokoto
    case taraba
    case yobe
    case zamfara
    
    public var country : Locale.Region {
        return Locale.Region.nigeria
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.states
    }
}
