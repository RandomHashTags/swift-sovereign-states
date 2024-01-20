//
//  SubdivisionsRomania.swift
//  
//
//  Created by Evan Anderson on 9/29/22.
//

import Foundation

public enum SubdivisionsRomania : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Counties_of_Romania
    case alba
    case arad
    case arges
    case bacau
    case bihor
    case bistrita_nasaud
    case botosani
    case braila
    case brasov
    case buzau
    case calarasi
    case caras_severin
    case cluj
    case constanta
    case covasna
    case dambovita
    case dolj
    case galati
    case giurgiu
    case gorj
    case harghita
    case hunedoara
    case ialomita
    case iasi
    case ilfov
    case maramures
    case mehedinti
    case mures
    case neamt
    case olt
    case prahova
    case salaj
    case satu_mare
    case sibiu
    case suceava
    case teleorman
    case timis
    case tulcea
    case valcea
    case vaslui
    case vrancea
    
    case bucharest
    
    public var country : Locale.Region {
        return Locale.Region.romania
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .bucharest:
            return SovereignStateSubdivisionType.cities
        default:
            return SovereignStateSubdivisionType.counties
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .alba: return "5/5d/Actual_Alba_county_CoA.png"
        case .arad: return "9/9a/Stema_judetului_Arad.png"
        case .arges: return "6/6a/Actual_Arge%C8%99_county_CoA.png"
        case .bacau: return "8/86/Stema_judetului_Bacau"
        case .bihor: return "c/c4/Actual_Bihor_county_CoA.png"
        case .bistrita_nasaud: return "3/33/Stema_Bistrita-Nasaud"
        case .botosani: return "4/43/Stema_judetului_Botosani"
        case .brasov: return "0/0e/Brasov_county_coat_of_arms.png"
        case .braila: return "5/57/Stema_judetului_Braila"
        case .buzau: return "0/02/Actual_Buz%C4%83u_county_CoA.png"
        case .caras_severin: return "c/c3/Actual_Cara%C8%99-Severin_county_CoA.png"
        case .calarasi: return "b/b5/Stema_Calarasi"
        case .cluj: return "1/1a/Actual_Cluj_county_CoA.png"
        case .constanta: return "f/f0/Actual_Constan%C8%9Ba_county_CoA.png"
        case .covasna: return "2/26/Coa_Romania_County_Kov%C3%A1szna"
        case .dambovita: return "3/34/Stema_Dambovita"
        case .dolj: return "1/16/RO_Dolj_county_COA"
        case .galati: return "3/33/Stema_judetului_Galati"
        case .giurgiu: return "a/ad/Stema_Giurgiu"
        case .gorj: return "a/a6/Stema_Gorj"
        case .harghita: return "1/1f/Harghita_county_coat_of_arms.gif"
        case .hunedoara: return "8/89/Actual_Hunedoara_county_CoA.png"
        case .ialomita: return "a/a8/Stema_Ialomita"
        case .iasi: return "c/c6/Actual_Iasi_county_CoA"
        case .ilfov: return "8/89/Actual_Ilfov_county_CoA.png"
        case .maramures: return "8/8d/Actual_Maramure%C8%99_county_CoA.png"
        case .mehedinti: return "a/ae/Actual_Mehedin%C8%9Bi_county_CoA.png"
        case .mures: return "3/3a/Mures_county_coat_of_arms"
        case .neamt: return "5/5f/Stema_Neamt"
        case .olt: return "d/de/Actual_Olt_county_CoA.png"
        case .prahova: return "9/9b/Stema_Prahova"
        case .satu_mare: return "7/7e/Satu_Mare_county_CoA.png"
        case .salaj: return "f/f8/RO_Jude%C8%9Bul_S%C4%83laj_COA"
        case .sibiu: return "2/28/Sibiu_county_coat_of_arms.png"
        case .suceava: return "6/61/Actual_Suceava_county_CoA.png"
        case .teleorman: return "4/43/Stema_Teleorman"
        case .timis: return "7/7e/ROU_Timis_County_CoA"
        case .tulcea: return "7/7a/Actual_Tulcea_county_CoA.png"
        case .vaslui: return "0/0b/Actual_Vaslui_county_CoA.png"
        case .valcea: return "6/66/Actual_V%C3%A2lcea_county_CoA.png"
        case .vrancea: return "3/32/Actual_Vrancea_county_CoA.png"
            
        case .bucharest: return "6/64/ROU_Bucharest_CoA"
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .bucharest:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
