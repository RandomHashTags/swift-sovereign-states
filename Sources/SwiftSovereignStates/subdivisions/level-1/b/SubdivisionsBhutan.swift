//
//  SubdivisionsBhutan.swift
//  
//
//  Created by Evan Anderson on 9/28/22.
//

import Foundation

public enum SubdivisionsBhutan : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Districts_of_Bhutan
    case bumthang
    case chhukha
    case dagana
    case gasa
    case haa
    case lhuentse
    case mongar
    case paro
    case pema_gatshel
    case punakha
    case samdrup_jongkhar
    case samtse
    case sarpang
    case thimphu
    case trashi_yangtse
    case trashigang
    case trongsa
    case tsirang
    case wangdue_phodrang
    case zhemgang
    
    public var country : Locale.Region {
        return Locale.Region.bhutan
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.districts
    }
}
