//
//  SubdivisionsLesotho.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public enum SubdivisionsLesotho : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Lesotho
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
    
    public var country : Locale.Region {
        return Locale.Region.lesotho
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
}
