//
//  SubdivisionsPhilippines.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public enum SubdivisionsPhilippines : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_the_Philippines
    case abra
    case agusan_del_norte
    case agusan_del_sur
    case aklan
    case albay
    case antique
    case apayao
    case aurora
    case basilan
    case bataan
    case batanes
    case batangas
    case benguet
    case biliran
    case bohol
    case bukidnon
    case bulacan
    case cagayan
    case camarines_norte
    case camarines_sur
    case camiguin
    case capiz
    case catanduanes
    case cavite
    case cebu
    case cotabato
    case davao_de_oro
    case davao_del_norte
    case davao_del_sur
    case davao_occidental
    case davao_oriental
    case dinagat_islands
    case eastern_samar
    case guimaras
    case ifugao
    case ilocos_norte
    case ilocos_sur
    case iloilo
    case isabela
    case kalinga
    case la_union
    case laguna
    case lanao_del_norte
    case lanao_del_sur
    case leyte
    case maguindanao_del_norte
    case maguindanao_del_sur
    case marinduque
    case masbate
    case misamis_occidental
    case misamis_oriental
    case mountain_province
    case negros_occidental
    case negros_oriental
    case northern_samar
    case nueva_ecija
    case nueva_vizcaya
    case occidental_mindoro
    case oriental_mindoro
    case palawan
    case pampanga
    case pangasinan
    case quezon
    case quirino
    case rizal
    case romblon
    case samar
    case sarangani
    case siquijor
    case sorsogon
    case south_cotabato
    case southern_leyte
    case sultan_kudarat
    case sulu
    case surigao_del_norte
    case surigao_del_sur
    case tarlac
    case tawi_tawi
    case zambales
    case zamboanga_del_norte
    case zamboanga_del_sur
    case zamboanga_sibugay
    
    case metro_manila
    
    public var country : Locale.Region {
        return Locale.Region.philippines
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .metro_manila:
            return SovereignStateSubdivisionType.administrative_areas
        default:
            return SovereignStateSubdivisionType.provinces
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .abra: return "b/b0/PH-ABR_Flag.png"
        case .agusan_del_norte: return "9/94/PH-AGN_Flag.png"
        case .agusan_del_sur: return "1/15/PH-AGS_Flag.png"
        case .aklan: return "9/90/PH-AKL_Flag.png"
        case .albay: return "c/c2/Albay_Flag.png"
        case .antique: return "1/19/PH-ANT_Flag.png"
        case .apayao: return "3/31/PH-APA_Flag.png"
        case .aurora: return "4/4f/PH-AUR_Flag.png"
        case .basilan: return "8/87/Flag_of_Basilan"
        case .bataan: return "2/2a/Bataan_Flag.png"
        case .batanes: return "f/f6/Batanes_Flag.png"
        case .batangas: return "en/e/ec/Ph_Flag_of_Batangas"
        case .benguet: return "c/c3/PH-BEN_Flag.png"
        case .biliran: return "f/f2/Biliran_Provincial_Flag.png"
        case .bohol: return "0/03/Flag_of_Bohol_Province%2C_Philippines"
        case .bukidnon: return "c/c8/Flag_of_the_Province_of_Bukidnon"
        case .bulacan: return "a/a6/PH-BUL_Flag.png"
        case .cagayan: return "0/02/Ph_Flag_of_Cagayan"
        case .camarines_norte: return "2/24/Flag_of_Camarines_Norte"
        case .camarines_sur: return "1/1a/PH-CAS_Flag.png"
        case .camiguin: return "8/8e/PH-CAM_Flag.png"
        case .capiz: return "a/a6/PH-CAP.png"
        case .catanduanes: return "6/61/PH-CAT_Flag.png"
        case .cavite: return "f/fb/PH-CAV_Flag.png"
        case .cebu: return "1/11/Flag_of_Cebu_%28province%29"
        case .cotabato: return "7/7c/PH-NCO_Flag.png"
        case .davao_de_oro: return "9/94/Davao_De_Oro_Flag.jpg"
        case .davao_del_norte: return "e/ef/PH-DAV_Flag.png"
        case .davao_del_sur: return "5/5f/Vlag_Fil_DavaodelSur.gif"
        case .davao_occidental: return "0/0e/PH-DVO_Flag.png"
        case .davao_oriental: return "f/f2/Flag_of_Davao_Oriental"
        case .dinagat_islands: return "5/51/PH-DIN_Flag.png"
        case .eastern_samar: return "e/e2/Eastern_Samar_Flag.png"
        case .guimaras: return "d/df/PH-GUI_Flag.png"
        case .ifugao: return "0/06/PH-IFU_Flag.png"
        case .ilocos_norte: return "4/42/Ph_Flag_of_Ilocos_Norte.png"
        case .ilocos_sur: return "5/5d/PH-ILS_Flag.png"
        case .iloilo: return "0/05/PH-ILI_Flag.png"
        case .isabela: return "c/ca/Flag_of_Isabela_%28province%29"
        case .kalinga: return "2/26/PH-KAL_Flag.png"
        case .la_union: return "c/ca/PH-LUN_Flag.png"
        case .laguna: return "5/5b/PH-LAG_Flag.png"
        case .lanao_del_norte: return "c/c4/PH-LAN_Flag.png"
        case .lanao_del_sur: return "b/b8/PH-LAS_Flag.png"
        case .leyte: return "9/94/Leyte_Flag.png"
        case .maguindanao_del_norte: return nil
        case .maguindanao_del_sur: return nil
        case .marinduque: return "0/0f/PH-MAD_Flag.png"
        case .masbate: return "d/dd/PH-MAS_Flag.png"
        case .misamis_occidental: return "e/e9/Flag_of_Misamis_Occidental"
        case .misamis_oriental: return "e/eb/PH-MSR_Flag.png"
        case .mountain_province: return "0/02/Flag_of_Mountain_Province.png"
        case .negros_occidental: return "4/42/PH-NEC_Flag.png"
        case .negros_oriental: return "1/1d/PH-NER_Flag.png"
        case .northern_samar: return "2/28/PH-NSA_Flag.png"
        case .nueva_ecija: return "a/a4/Vlag_Fil_NuevaEcija.gif"
        case .nueva_vizcaya: return "5/58/PH-NUV_Flag.png"
        case .occidental_mindoro: return "e/e7/Occ._Mindoro_Flag.png"
        case .oriental_mindoro: return "1/1f/Orien._Mindoro_Flag.png"
        case .palawan: return "f/fa/Palawan_Flag.png"
        case .pampanga: return "4/46/Pampanga_Flag.png"
        case .pangasinan: return "a/a1/Flag_of_Pangasinan"
        case .quezon: return "d/d7/Quezon_Flag.png"
        case .quirino: return "1/17/Quirino_flag.png"
        case .rizal: return "e/e7/Rizal_Flag.png"
        case .romblon: return "9/91/PH-ROM_Flag.png"
        case .samar: return "9/98/Flag_of_Samar.gif"
        case .sarangani: return "7/76/Flag_of_Sarangani.png"
        case .siquijor: return "5/5e/Siquijor_Flag.png"
        case .sorsogon: return "6/65/PH-SOR_Flag_2.png"
        case .south_cotabato: return "7/7f/South_Cotabato_Flag.png"
        case .southern_leyte: return "en/f/ff/New_Southern_Leyte_Flag.png"
        case .sultan_kudarat: return "6/66/Sultan_Kudarat_Flag.png"
        case .sulu: return "7/71/Sulu_Province_Flag"
        case .surigao_del_norte: return "e/e8/Flag_of_Surigao_del_Norte"
        case .surigao_del_sur: return "6/69/Surigao_del_Sur_Flag.png"
        case .tarlac: return "e/e8/Flag_of_the_Province_of_Tarlac"
        case .tawi_tawi: return "3/37/Tawi-Tawi_Flag.png"
        case .zambales: return "b/b1/Zambales_Flag.png"
        case .zamboanga_del_norte: return "a/a9/Zamboanga_del_Norte_Flag.png"
        case .zamboanga_del_sur: return "6/6f/Zamboanga_del_Sur_gov._Flag.png"
        case .zamboanga_sibugay: return "3/3c/Zamboanga_Sibugay_Flag.png"
            
        case .metro_manila: return nil
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .davao_de_oro,
                .dinagat_islands,
                .maguindanao_del_norte,
                .maguindanao_del_sur,
                .mountain_province,
                .metro_manila:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
