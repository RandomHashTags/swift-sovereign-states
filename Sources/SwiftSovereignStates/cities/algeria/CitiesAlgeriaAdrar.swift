//
//  CitiesAlgeriaAdrar.swift
//  
//
//  Created by Evan Anderson on 9/24/22.
//

import Foundation

public enum CitiesAlgeriaAdrar : String, CaseIterable, SovereignStateCity { // https://en.wikipedia.org/wiki/Adrar_Province
    case adrar
    case akabli
    case aougrout
    case aoulef
    
    case bordj_badji_mokhtar
    case bouda
    
    case charouine
    
    case deldoul
    
    case fenoughil
    
    case in_zghmir
    
    case ksar_kaddour
    
    case metarfa
    
    case ouled_ahmed_timmi
    case ouled_aissa
    case ouled_said
    
    case reggane
    
    case sali
    case sebaa
    
    case talmine
    case tamentit
    case tamest
    case timiaouine
    case timimoun
    case timokten
    case tinerkouk
    case tit
    case tsabit
    
    case zaouiet_kounta
    
    public func getSubdivision() -> any SovereignStateSubdivision {
        return SubdivisionsAlgeria.adrar
    }
}
