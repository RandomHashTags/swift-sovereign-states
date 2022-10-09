//
//  SubdivisionsLesotho.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public enum SubdivisionsLesotho : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Lesotho
    case berea
    case butha_buthe
    case leribe
    case mafeteng
    case maseru
    case mohale_s_hoek
    case mokhotlong
    case qacha_s_nek
    case quthing
    case thaba_tseka
    
    public func getCountry() -> Country {
        return Country.lesotho
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
    
    public func getRealName() -> String? {
        switch self {
        case .butha_buthe: return "Butha-Buthe"
        case .mohale_s_hoek: return "Mohale's Hoek"
        case .qacha_s_nek: return "Qacha's Nek"
        case .thaba_tseka: return "Thaba-Tseka"
        default: return nil
        }
    }
}
