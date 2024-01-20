//
//  SubdivisionsJapan.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public enum SubdivisionsJapan : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Administrative_divisions_of_Japan | https://en.wikipedia.org/wiki/Prefectures_of_Japan
    case aichi
    case akita
    case aomori
    case chiba
    case ehime
    case fukui
    case fukuoka
    case fukushima
    case gifu
    case gunma
    case hiroshima
    case hokkaido
    case hyogo
    case ibaraki
    case ishikawa
    case iwate
    case kagawa
    case kagoshima
    case kanagawa
    case kochi
    case kumamoto
    case kyoto
    case mie
    case miyagi
    case miyazaki
    case nagano
    case nagasaki
    case nara
    case niigata
    case oita
    case okayama
    case okinawa
    case osaka
    case saga
    case saitama
    case shiga
    case shimane
    case shizuoka
    case tochigi
    case tokushima
    case tokyo
    case tottori
    case toyama
    case wakayama
    case yamagata
    case yamaguchi
    case yamanashi
    
    public var country : Locale.Region {
        return Locale.Region.japan
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.prefectures
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .hokkaido,
                .tokyo:
            return nil
        default:
            return nil
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .aichi: return "0/02/Flag_of_Aichi_Prefecture"
        case .akita: return "8/84/Flag_of_Akita_Prefecture"
        case .aomori: return "3/30/Flag_of_Aomori_Prefecture"
        case .chiba: return "0/0a/Flag_of_Chiba_Prefecture"
        case .ehime: return "2/2d/Flag_of_Ehime_Prefecture"
        case .fukui: return "5/56/Flag_of_Fukui_Prefecture"
        case .fukuoka: return "7/71/Flag_of_Fukuoka_Prefecture"
        case .fukushima: return "4/4b/Flag_of_Fukushima_Prefecture"
        case .gifu: return "3/3e/Flag_of_Gifu_Prefecture"
        case .gunma: return "b/ba/Flag_of_Gunma_Prefecture"
        case .hiroshima: return "e/ed/Flag_of_Hiroshima_Prefecture"
        case .hokkaido: return "2/22/Flag_of_Hokkaido_Prefecture"
        case .hyogo: return "7/74/Flag_of_Hyogo_Prefecture"
        case .ibaraki: return "a/a8/Flag_of_Ibaraki_Prefecture"
        case .ishikawa: return "6/6a/Flag_of_Ishikawa_Prefecture"
        case .iwate: return "a/a9/Flag_of_Iwate_Prefecture"
        case .kagawa: return "2/29/Flag_of_Kagawa_Prefecture"
        case .kagoshima: return "c/c5/Flag_of_Kagoshima_Prefecture"
        case .kanagawa: return "a/a7/Flag_of_Kanagawa_Prefecture"
        case .kochi: return "5/50/Flag_of_Kochi_Prefecture"
        case .kumamoto: return "f/f7/Flag_of_Kumamoto_Prefecture"
        case .kyoto: return "0/06/Flag_of_Kyoto_Prefecture"
        case .mie: return "8/8c/Flag_of_Mie_Prefecture"
        case .miyagi: return "c/c7/Flag_of_Miyagi_Prefecture"
        case .miyazaki: return "0/0b/Flag_of_Miyazaki_Prefecture"
        case .nagano: return "f/f0/Flag_of_Nagano_Prefecture"
        case .nagasaki: return "6/65/Flag_of_Nagasaki_Prefecture"
        case .nara: return "0/00/Flag_of_Nara_Prefecture"
        case .niigata: return "c/cb/Flag_of_Niigata_Prefecture"
        case .oita: return "c/c8/Flag_of_Oita_Prefecture"
        case .okayama: return "3/33/Flag_of_Okayama_Prefecture"
        case .okinawa: return "2/2f/Flag_of_Okinawa_Prefecture"
        case .osaka: return "5/5a/Flag_of_Osaka_Prefecture"
        case .saga: return "1/18/Flag_of_Saga_Prefecture"
        case .saitama: return "c/cd/Flag_of_Saitama_Prefecture"
        case .shiga: return "9/99/Flag_of_Shiga_Prefecture"
        case .shimane: return "e/e8/Flag_of_Shimane_Prefecture"
        case .shizuoka: return "9/92/Flag_of_Shizuoka_Prefecture"
        case .tochigi: return "d/d5/Flag_of_Tochigi_Prefecture"
        case .tokushima: return "a/ac/Flag_of_Tokushima_Prefecture"
        case .tokyo: return "1/15/Flag_of_Tokyo_Metropolis"
        case .tottori: return "1/1c/Flag_of_Tottori_Prefecture"
        case .toyama: return "1/1d/Flag_of_Toyama_Prefecture"
        case .wakayama: return "6/6e/Flag_of_Wakayama_Prefecture"
        case .yamagata: return "a/a1/Flag_of_Yamagata_Prefecture"
        case .yamaguchi: return "b/b9/Flag_of_Yamaguchi_Prefecture"
        case .yamanashi: return "0/00/Flag_of_Yamanashi_Prefecture"
        }
    }
}
