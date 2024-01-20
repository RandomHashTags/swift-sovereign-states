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
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .baringo: return "d/da/Flag_of_Baringo_County.png"
        case .bomet: return "f/f5/Flag_of_Bomet_County.png"
        case .bungoma: return nil
        case .busia: return "2/2c/Flag_of_Busia_County.png"
        case .elgeyo_marakwet: return "8/87/Elgeyo_Marakwet_Flag.png"
        case .embu: return "f/f8/Embu_County_Government_logo.png"
        case .garissa: return nil
        case .homa_bay: return "2/2c/Flag_of_Homa_Bay_County.png"
        case .isiolo: return nil
        case .kajiado: return "c/c0/Coat_of_Arms_of_Kajiado_County.png"
        case .kakamega: return nil
        case .kericho: return "c/c7/Kericho_County_Government_logo.png"
        case .kiambu: return "c/cf/Kiambu_County_Flag"
        case .kilifi: return "5/59/Flag_of_Kilifi_County.png"
        case .kirinyaga: return "c/cb/Coat_of_Arms_of_Kirinyaga_County.png"
        case .kisii: return nil
        case .kisumu: return nil
        case .kitui: return "e/ed/Coat_of_Arms_of_Kitui_County.jpg"
        case .kwale: return "3/3a/Kwale_County_Flag"
        case .laikipia: return "0/03/Flag_of_Laikipia_County.png"
        case .lamu: return nil
        case .machakos: return "1/10/Flag_of_Machakos_County.png"
        case .makueni: return "f/f2/Makueni_County_Government.jpg"
        case .mandera: return "2/20/Flag_of_Mandera_County%2C_Kenya"
        case .marsabit: return "6/66/Flag_of_Marsabit_County.png"
        case .meru: return "5/5c/Flag_of_Meru_County.png"
        case .migori: return nil
        case .mombasa: return "d/d9/Flag_of_Mombasa.png"
        case .murang_a: return "8/81/Coat_of_Arms_of_Muranga_County.png"
        case .nairobi: return "8/84/Flag_of_Nairobi"
        case .nakuru: return nil
        case .nandi: return "1/15/Contea_di_Nandi_flag.gif"
        case .narok: return nil
        case .nyamira: return nil
        case .nyandarua: return "3/37/Flag_of_Nyandarua_County.png"
        case .nyeri: return nil
        case .samburu: return "6/60/Flag_of_Samburu_County.png"
        case .siaya: return "2/2d/Coat_of_Arms_of_Siaya_County.png"
        case .taita_taveta: return "6/66/Flag_of_Taita_Taveta_County.png"
        case .tana_river: return nil
        case .tharaka_nithi: return "c/c3/Coat_of_Arms_of_Tharaka-Nithi_County.png"
        case .trans_nzoia: return nil
        case .turkana: return "en/e/e4/Seal_of_Turkana_County.png"
        case .uasin_gishu: return "8/89/Uasin_Gishu_County_Government_logo.png"
        case .vihiga: return "f/f9/Coat_of_Arms_of_Vihiga_County.png"
        case .wajir: return "2/24/Coat_of_Arms_of_Wajir_County.png"
        case .west_pokot: return "4/4e/Flag_of_West_Pokot_County.png"
        }
    }
}
