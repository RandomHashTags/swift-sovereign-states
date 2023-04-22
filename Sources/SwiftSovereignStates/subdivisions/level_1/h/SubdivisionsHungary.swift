//
//  SubdivisionsHungary.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public enum SubdivisionsHungary : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Counties_of_Hungary
    case bacs_kiskun
    case baranya
    case bekes
    case borsod_abauj_zemplen
    case budapest
    case csongrad_csanad
    case fejer
    case gyor_moson_sopron
    case hajdu_bihar
    case heves
    case jasz_nagykun_szolnok
    case komarom_esztergom
    case nograd
    case pest
    case somogy
    case szabolcs_szatmar_bereg
    case tolna
    case vas
    case veszprem
    case zala
    
    public var country : Country {
        return Country.hungary
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.counties
    }
    
    public var wikipedia_url_suffix : String? {
        switch self {
        case .budapest:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
