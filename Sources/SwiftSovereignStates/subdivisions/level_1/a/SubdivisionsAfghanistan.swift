//
//  SubdivisionsAfghanistan.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public enum SubdivisionsAfghanistan : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Afghanistan
    case badakhshan
    case badghis
    case baghlan
    case balkh
    case bamyan
    case daykundi
    case farah
    case faryab
    case ghazni
    case ghor
    case helmand
    case herat
    case jowzjan
    case kabul
    case kandahar
    case kapisa
    case khost
    case kunar
    case kunduz
    case laghman
    case logar
    case nangarhar
    case nimruz
    case nuristan
    case paktia
    case paktika
    case panjshir
    case parwan
    case samangan
    case sar_e_pol
    case takhar
    case uruzgan
    case wardak
    case zabul
    
    public var country : Locale.Region {
        return Locale.Region.afghanistan
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public var isoAlpha2 : String? {
        switch self {
        case .badakhshan: return "BDS"
        case .badghis: return "BDG"
        case .baghlan: return "BGL"
        case .balkh: return "BAL"
        case .bamyan: return "BAM"
        case .daykundi: return "DAY"
        case .farah: return "FRA"
        case .faryab: return "FYB"
        case .ghazni: return "GHA"
        case .ghor: return "GHO"
        case .helmand: return "HEL"
        case .herat: return "HER"
        case .jowzjan: return "JOW"
        case .kabul: return "KAB"
        case .kandahar: return "KAN"
        case .kapisa: return "KAP"
        case .khost: return "KHO"
        case .kunar: return "KNR"
        case .kunduz: return "KDZ"
        case .laghman: return "LAG"
        case .logar: return "LOG"
        case .nangarhar: return "NAN"
        case .nimruz: return "NIM"
        case .nuristan: return "NUR"
        case .paktia: return "PIA"
        case .paktika: return "PKA"
        case .panjshir: return "PAN"
        case .parwan: return "PAR"
        case .samangan: return "SAM"
        case .sar_e_pol: return "SAR"
        case .takhar: return "TAK"
        case .uruzgan: return "URU"
        case .wardak: return "WAR"
        case .zabul: return "ZAB"
        }
    }
}
