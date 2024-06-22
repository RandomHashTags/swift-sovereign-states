//
//  SubdivisionsMyanmar.swift
//
//
//  Created by Evan Anderson on 1/24/24.
//

import Foundation

public enum SubdivisionsMyanmar : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Myanmar
    case ayeyarwady
    case bago
    case chin
    case kachin
    case kayah
    case kayin
    case magway
    case mandalay
    case mon
    case naypyidaw
    case rakhine
    case sagaing
    case shan
    case tanintharyi
    case yangon
    
    case danu
    case kokang
    case naga
    case pa_laung
    case pa_o
    case wa
    
    public var country : Locale.Region {
        return Locale.Region.myanmar
    }
    
    public var type : Locale.Region.SubdivisionType {
        switch self {
        case .ayeyarwady,
                .bago,
                .magway,
                .mandalay,
                .sagaing,
                .tanintharyi,
                .yangon:
            return Locale.Region.SubdivisionType.regions
        case .chin,
                .kachin,
                .kayah,
                .kayin,
                .mon,
                .rakhine,
                .shan:
            return Locale.Region.SubdivisionType.states
        case .naypyidaw:
            return Locale.Region.SubdivisionType.union_territories
            
        case .danu,
                .kokang,
                .naga,
                .pa_laung,
                .pa_o:
            return Locale.Region.SubdivisionType.self_administered_zone
        case .wa:
            return Locale.Region.SubdivisionType.self_administered_division
        }
    }
}
