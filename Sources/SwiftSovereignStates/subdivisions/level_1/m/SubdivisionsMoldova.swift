//
//  SubdivisionsMoldova.swift
//  
//
//  Created by Evan Anderson on 9/27/22.
//

import Foundation

public enum SubdivisionsMoldova : String, SovereignStateSubdivision {
    case anenii_noi
    case balti
    case basarabeasca
    case bender
    case briceni
    case cahul
    case calarasi
    case cantemir
    case causeni
    case chisinau
    case cimislia
    case criuleni
    case donduseni
    case drochia
    case dubasari
    case edinet
    case falesti
    case floresti
    case glodeni
    case hincesti
    case ialoveni
    case leova
    case nisporeni
    case ocnita
    case orhei
    case rezina
    case riscani
    case singerei
    case soldanesti
    case soroca
    case stefan_voda
    case straseni
    case taraclia
    case telenesti
    case ungheni
    
    case gagauzia
    case left_bank_of_the_dniester // aka Transnistria
    
    public var country : Locale.Region {
        return Locale.Region.moldova
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .balti, .chisinau, .bender:
            return SovereignStateSubdivisionType.municipalities
        case .gagauzia, .left_bank_of_the_dniester:
            return SovereignStateSubdivisionType.autonomous_territorial_units
        default:
            return SovereignStateSubdivisionType.districts
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .anenii_noi: return "c/c8/Flag_of_Anenii_Noi_District.gif"
        case .balti: return "7/7a/Flag_of_Bălți.png"
        case .basarabeasca: return "1/11/Flag_of_Basarabeasca_District.png"
        case .bender: return "e/e8/Bendery-Flag.jpg"
        case .briceni: return nil
        case .cahul: return "b/b8/Flag_of_District_Cahul"
        case .calarasi: return "f/f8/Rajon_Calarasi_flag.gif"
        case .cantemir: return nil
        case .causeni: return "3/3a/Flag_of_Căușeni_District.jpg"
        case .chisinau: return "9/98/Flag_of_Chișinău"
        case .cimislia: return "6/6f/Cimislia_flag.png"
        case .criuleni: return "b/bb/Drapel_Raionul_Criuleni.gif"
        case .donduseni: return "6/64/Flag_of_Dondușeni_District.gif"
        case .drochia: return "7/7b/Drochia_rajon_flag.png"
        case .dubasari: return "9/91/Dubăsari_District_flag"
        case .edinet: return "a/a1/Steag_raionul_edinet"
        case .falesti: return "a/a6/Rajon_Fălești_Flag.gif"
        case .floresti: return nil
        case .glodeni: return "c/cd/Flag_of_Glodeni_District.gif"
        case .hincesti: return "b/b1/Hincesti_rajon_flag.gif"
        case .ialoveni: return "e/e2/Flag_of_Ialoveni_District.gif"
        case .leova: return "8/8f/Drapel_Raionul_Leova.png"
        case .nisporeni: return "9/9e/Nisporeni_rajon_flag.gif"
        case .ocnita: return "b/b4/Ocnitar.gif"
        case .orhei: return "d/da/Orhei2.gif"
        case .rezina: return "f/f1/Flag_of_District_Rezina"
        case .riscani: return "4/47/Riscani_rajon_flag.gif"
        case .singerei: return "c/c6/Singerei_rajon_flag.gif"
        case .soldanesti: return "1/16/Soldanesti_rajon_flag.gif"
        case .soroca: return "c/c1/Flag_of_District_Soroca"
        case .stefan_voda: return "1/18/Stefan_voda_rajon_flag.gif"
        case .straseni: return "c/ce/Straseni_rajon_flag.gif"
        case .taraclia: return "f/f8/Drapel_Raionul_Taraclia.png"
        case .telenesti: return "1/17/Drapel_Raionul_Telenești.png"
        case .ungheni: return "a/a5/Flag_of_District_Ungheni"
        
        case .gagauzia: return "6/69/Flag_of_Gagauzia"
        case .left_bank_of_the_dniester: return nil
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .bender:
            return ",_Moldova"
        case .gagauzia, .left_bank_of_the_dniester:
            return nil
        default:
            return "_" + type_suffix
        }
    }
}
