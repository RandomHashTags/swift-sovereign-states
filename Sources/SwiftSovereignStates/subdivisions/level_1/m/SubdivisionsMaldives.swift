//
//  SubdivisionsMaldives.swift
//  
//
//  Created by Evan Anderson on 2/12/23.
//

import Foundation

public enum SubdivisionsMaldives : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_the_Maldives
    case alif_alif
    case alif_dhaal
    case baa
    case dhaalu
    case faafu
    case gaafu_alif
    case haa_alif
    case haddhunmathi
    case kaafu
    case kolhumadulu
    case lhaviyani
    case meemu
    case noonu
    case raa
    case shaviyani
    case vaavu
    
    case gnaviyani
    case haa_dhaalu
    case male
    case addu
    
    public var country : Locale.Region {
        return Locale.Region.maldives
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .male:
            return SovereignStateSubdivisionType.cities
        default:
            return SovereignStateSubdivisionType.atolls
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .male:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
