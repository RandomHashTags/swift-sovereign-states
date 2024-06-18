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
}
