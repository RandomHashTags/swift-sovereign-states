//
//  SubdivisionsPalestine.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsPalestine : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Governorates_of_Palestine
    case bethlehem
    case deir_al_balah
    case gaza
    case hebron
    case jenin
    case jericho
    case jerusalem
    case khan_yunis
    case nablus
    case north_gaza
    case qalqilya
    case rafah
    case ramallah_and_al_bireh
    case salfit
    case tubas
    case tulkarm
    
    public func getCountry() -> Country {
        return Country.palestine
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.governorates
    }
    
    public func getRealName() -> String? {
        switch self {
        case .deir_al_balah: return "Deir al-Balah"
        case .ramallah_and_al_bireh: return "Ramallah and al-Bireh"
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix() -> String? {
        return "_Governorate"
    }
}
