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
    
    public var real_name : String? {
        switch self {
        case .bacs_kiskun: return "Bács-Kiskun"
        case .bekes: return "Békés"
        case .borsod_abauj_zemplen: return "Borsod-Abaúj-Zemplén"
        case .csongrad_csanad: return "Csongrád-Csanád"
        case .fejer: return "Fejér"
        case .gyor_moson_sopron: return "Győr-Moson-Sopron"
        case .hajdu_bihar: return "Hajdú-Bihar"
        case .jasz_nagykun_szolnok: return "Jász-Nagykun-Szolnok"
        case .komarom_esztergom: return "Komárom-Esztergom"
        case .nograd: return "Nógrád"
        case .szabolcs_szatmar_bereg: return "Szabolcs-Szatmár-Bereg"
        case .veszprem: return "Veszprém"
        default: return nil
        }
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
