//
//  SubdivisionsIndonesia.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsIndonesia : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Indonesia
    case aceh
    case bali
    case bangka_belitung_islands
    case banten
    case bengkulu
    case central_java
    case central_kalimantan
    case central_sulawesi
    case east_java
    case east_kalimantan
    case east_nusa_tenggara
    case gorontalo
    case jakarta
    case jambi
    case lampung
    case maluku
    case north_kalimantan
    case north_maluku
    case north_sulawesi
    case north_sumatra
    case papua
    case riau
    case riau_islands
    case southeast_sulawesi
    case south_kalimantan
    case south_sulawesi
    case south_sumatra
    case west_java
    case west_kalimantan
    case west_nusa_tenggara
    case west_papua
    case west_sulawesi
    case west_sumatra
    case special_region_of_yogyakarta
    
    public var country : Locale.Region {
        return Locale.Region.indonesia
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .maluku,
                .papua,
                .west_papua:
            return "_(" + type_suffix.lowercased() + ")"
        default:
            return nil
        }
    }
}
