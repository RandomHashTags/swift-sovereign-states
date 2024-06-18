//
//  SubdivisionsKenya.swift
//  
//
//  Created by Evan Anderson on 9/27/22.
//

import Foundation

public enum SubdivisionsKenya : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Counties_of_Kenya
    case baringo
    case bomet
    case bungoma
    case busia
    case elgeyo_marakwet
    case embu
    case garissa
    case homa_bay
    case isiolo
    case kajiado
    case kakamega
    case kericho
    case kiambu
    case kilifi
    case kirinyaga
    case kisii
    case kisumu
    case kitui
    case kwale
    case laikipia
    case lamu
    case machakos
    case makueni
    case mandera
    case marsabit
    case meru
    case migori
    case mombasa
    case murang_a
    case nairobi
    case nakuru
    case nandi
    case narok
    case nyamira
    case nyandarua
    case nyeri
    case samburu
    case siaya
    case taita_taveta
    case tana_river
    case tharaka_nithi
    case trans_nzoia
    case turkana
    case uasin_gishu
    case vihiga
    case wajir
    case west_pokot
    
    public var country : Locale.Region {
        return Locale.Region.kenya
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.counties
    }
}
