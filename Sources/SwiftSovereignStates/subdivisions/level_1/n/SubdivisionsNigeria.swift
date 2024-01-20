//
//  SubdivisionsNigeria.swift
//  
//
//  Created by Evan Anderson on 9/21/22.
//

import Foundation

public enum SubdivisionsNigeria : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/States_of_Nigeria
    case abia
    case adamawa
    case akwa_ibom
    case anambra
    case bauchi
    case bayelsa
    case benue
    case borno
    case cross_river
    case delta
    case ebonyi
    case edo
    case ekiti
    case enugu
    case gombe
    case imo
    case jigawa
    case kaduna
    case kano
    case katsina
    case kebbi
    case kogi
    case kwara
    case lagos
    case nasarawa
    case niger
    case ogun
    case ondo
    case osun
    case oyo
    case plateau
    case rivers
    case sokoto
    case taraba
    case yobe
    case zamfara
    
    public var country : Locale.Region {
        return Locale.Region.nigeria
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.states
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .abia: return "f/ff/Abia_State_Flag.gif"
        case .adamawa: return "e/e5/Adamawa_State_Flag"
        case .akwa_ibom: return "5/5f/Flag_of_Akwa_Ibom_State"
        case .anambra: return "c/ca/Flag_of_Anambra_State.png"
        case .bauchi: return "5/57/Bauchi_State_Coat_of_arms.png"
        case .bayelsa: return "f/fe/Flag_of_Bayelsa_State"
        case .benue: return "en/8/89/Flag_of_Benue_State.png"
        case .borno: return "1/1d/Borno_State_Flag.gif"
        case .cross_river: return "0/03/Cross_River_State_Flag.gif"
        case .delta: return "a/a7/Delta_State_Flag.gif"
        case .ebonyi: return "6/66/Seal_of_Ebonyi_State.png"
        case .edo: return "e/ec/Edo_State_Flag.png"
        case .ekiti: return "0/02/Ekiti_State_Flag.gif"
        case .enugu: return "9/9f/Flag_of_Enugu_State.png"
        case .gombe: return "8/82/Flag_of_Gombe_State"
        case .imo: return "8/80/Flag_of_Imo_State.png"
        case .jigawa: return "1/1e/Jigawa_State_Flag.png"
        case .kaduna: return "5/5e/Kaduna_State_Flag.png"
        case .kano: return "b/b5/Kano_State_flag_official.png"
        case .katsina: return "en/e/e1/Seal_of_Katsina_State.png"
        case .kebbi: return "2/2c/Seal_of_Kebbi_State.png"
        case .kogi: return "c/cb/Kogi_State_Flag.png"
        case .kwara: return "c/c6/Kwara_State_Flag.jpg"
        case .lagos: return "c/cc/Lagos_State_Flag.gif"
        case .nasarawa: return "8/82/Flag_of_Nasarawa_State.png"
        case .niger: return "7/7f/Flag_of_Niger_State.png"
        case .ogun: return "c/c9/Ogun_State_Flag.jpg"
        case .ondo: return "1/1e/Ondo_State_Flag.jpg"
        case .osun: return "8/8f/Flag_of_Osun_State%2C_Nigeria"
        case .oyo: return "8/85/Oyo_State_Coat_of_Arms.png"
        case .plateau: return "0/00/Plateau_State_Flag.jpg"
        case .rivers: return "9/9a/Flag_of_Rivers_State.png"
        case .sokoto: return "0/0f/Flag_of_Sokoto_State.png"
        case .taraba: return "0/0b/Taraba_State_Coat_of_Arms.png"
        case .yobe: return "0/06/Yobe_State_Flag.png"
        case .zamfara: return "7/7f/Zamfara_State_Flag.png"
        }
    }
    
    public var governmentURL : String? {
        switch self {
        case .abia: return nil
        case .adamawa: return nil
        case .akwa_ibom: return "https://akwaibomstate.gov.ng"
        case .anambra: return "https://www.anambrastate.gov.ng"
        case .bauchi: return "https://www.bauchistate.gov.ng"
        case .bayelsa: return nil
        case .benue: return nil
        case .borno: return nil
        case .cross_river: return "https://crossriverstate.gov.ng"
        case .delta: return "https://www.deltastate.gov.ng"
        case .ebonyi: return "http://www.ebonyistate.gov.ng"
        case .edo: return "https://www.edostate.gov.ng"
        case .ekiti: return nil
        case .enugu: return "https://www.enugustate.gov.ng"
        case .gombe: return "https://gombestate.gov.ng"
        case .imo: return nil
        case .jigawa: return "http://www.jigawastate.gov.ng"
        case .kaduna: return "https://kdsg.gov.ng"
        case .kano: return "https://kanostate.gov.ng"
        case .katsina: return "https://www.katsinastate.gov.ng"
        case .kebbi: return "https://www.kebbistate.gov.ng"
        case .kogi: return "https://kogistate.gov.ng"
        case .kwara: return "https://kwarastate.gov.ng"
        case .lagos: return "https://lagosstate.gov.ng"
        case .nasarawa: return "https://nasarawastate.gov.ng"
        case .niger: return "https://nigerstate.gov.ng"
        case .ogun: return nil
        case .ondo: return nil
        case .osun: return "https://www.osunstate.gov.ng"
        case .oyo: return "https://oyostate.gov.ng"
        case .plateau: return "http://www.plateaustate.gov.ng"
        case .rivers: return "https://www.riversstate.gov.ng"
        case .sokoto: return nil
        case .taraba: return "https://www.tarabastate.gov.ng"
        case .yobe: return nil
        case .zamfara: return nil
        }
    }
}
