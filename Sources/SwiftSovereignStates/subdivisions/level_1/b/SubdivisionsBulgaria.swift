//
//  SubdivisionsBulgaria.swift
//  
//
//  Created by Evan Anderson on 6/21/22.
//

import Foundation

public enum SubdivisionsBulgaria : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Bulgaria
    case blagoevgrad
    case burgas
    case dobrich
    case gabrovo
    case haskovo
    case kardzhali
    case kyustendil
    case lovech
    case montana
    case pazardzhik
    case pernik
    case pleven
    case plovdiv
    case razgrad
    case ruse
    case shumen
    case silistra
    case sliven
    case smolyan
    case sofia
    case sofia_city
    case stara_zagora
    case targovishte
    case varna
    case veliko_tarnovo
    case vidin
    case vratsa
    case yambol
    
    public var country : Locale.Region {
        return Locale.Region.bulgaria
    }
    
    public var type : SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public var neighbors : [any SovereignStateSubdivision] {
        switch self {
        case .blagoevgrad:
            return [SubdivisionsBulgaria.kyustendil, SubdivisionsBulgaria.sofia, SubdivisionsBulgaria.pazardzhik, SubdivisionsBulgaria.smolyan]
        case .burgas:
            return [SubdivisionsBulgaria.yambol, SubdivisionsBulgaria.sliven, SubdivisionsBulgaria.shumen, SubdivisionsBulgaria.varna]
        case .dobrich:
            return [SubdivisionsBulgaria.silistra, SubdivisionsBulgaria.shumen, SubdivisionsBulgaria.varna]
        case .gabrovo:
            return [SubdivisionsBulgaria.lovech, SubdivisionsBulgaria.veliko_tarnovo, SubdivisionsBulgaria.stara_zagora, SubdivisionsBulgaria.plovdiv]
        case .haskovo:
            return [SubdivisionsBulgaria.kardzhali, SubdivisionsBulgaria.plovdiv, SubdivisionsBulgaria.stara_zagora, SubdivisionsBulgaria.sliven, SubdivisionsBulgaria.yambol]
        case .kardzhali:
            return [SubdivisionsBulgaria.smolyan, SubdivisionsBulgaria.plovdiv, SubdivisionsBulgaria.haskovo]
        case .kyustendil:
            return [SubdivisionsBulgaria.pernik, SubdivisionsBulgaria.sofia, SubdivisionsBulgaria.blagoevgrad]
        case .lovech:
            return [SubdivisionsBulgaria.vratsa, SubdivisionsBulgaria.pleven, SubdivisionsBulgaria.veliko_tarnovo, SubdivisionsBulgaria.gabrovo, SubdivisionsBulgaria.stara_zagora, SubdivisionsBulgaria.plovdiv, SubdivisionsBulgaria.sofia]
        case .montana:
            return [SubdivisionsBulgaria.vidin, SubdivisionsBulgaria.vratsa, SubdivisionsBulgaria.sofia]
        case .pazardzhik:
            return [SubdivisionsBulgaria.blagoevgrad, SubdivisionsBulgaria.sofia, SubdivisionsBulgaria.plovdiv, SubdivisionsBulgaria.smolyan]
        case .pernik:
            return [SubdivisionsBulgaria.kyustendil, SubdivisionsBulgaria.sofia, SubdivisionsBulgaria.sofia_city]
        case .pleven:
            return [SubdivisionsBulgaria.vratsa, SubdivisionsBulgaria.lovech, SubdivisionsBulgaria.veliko_tarnovo]
        case .plovdiv:
            return [SubdivisionsBulgaria.smolyan, SubdivisionsBulgaria.pazardzhik, SubdivisionsBulgaria.sofia, SubdivisionsBulgaria.lovech, SubdivisionsBulgaria.gabrovo, SubdivisionsBulgaria.stara_zagora, SubdivisionsBulgaria.haskovo, SubdivisionsBulgaria.kardzhali]
        case .razgrad:
            return [SubdivisionsBulgaria.ruse, SubdivisionsBulgaria.silistra, SubdivisionsBulgaria.shumen, SubdivisionsBulgaria.targovishte]
        case .ruse:
            return [SubdivisionsBulgaria.veliko_tarnovo, SubdivisionsBulgaria.targovishte, SubdivisionsBulgaria.razgrad, SubdivisionsBulgaria.silistra]
        case .shumen:
            return [SubdivisionsBulgaria.silistra, SubdivisionsBulgaria.dobrich, SubdivisionsBulgaria.varna, SubdivisionsBulgaria.burgas, SubdivisionsBulgaria.sliven, SubdivisionsBulgaria.targovishte, SubdivisionsBulgaria.razgrad]
        case .silistra:
            return [SubdivisionsBulgaria.ruse, SubdivisionsBulgaria.razgrad, SubdivisionsBulgaria.shumen, SubdivisionsBulgaria.dobrich]
        case .sliven:
            return [SubdivisionsBulgaria.yambol, SubdivisionsBulgaria.haskovo, SubdivisionsBulgaria.stara_zagora, SubdivisionsBulgaria.veliko_tarnovo, SubdivisionsBulgaria.targovishte, SubdivisionsBulgaria.shumen, SubdivisionsBulgaria.burgas]
        case .smolyan:
            return [SubdivisionsBulgaria.blagoevgrad, SubdivisionsBulgaria.pazardzhik, SubdivisionsBulgaria.plovdiv, SubdivisionsBulgaria.kardzhali]
        case .sofia:
            return [SubdivisionsBulgaria.pernik, SubdivisionsBulgaria.kyustendil, SubdivisionsBulgaria.blagoevgrad, SubdivisionsBulgaria.pazardzhik, SubdivisionsBulgaria.plovdiv, SubdivisionsBulgaria.lovech, SubdivisionsBulgaria.vratsa, SubdivisionsBulgaria.montana, SubdivisionsBulgaria.sofia_city]
        case .sofia_city:
            return [SubdivisionsBulgaria.pernik, SubdivisionsBulgaria.sofia]
        case .stara_zagora:
            return [SubdivisionsBulgaria.haskovo, SubdivisionsBulgaria.plovdiv, SubdivisionsBulgaria.lovech, SubdivisionsBulgaria.gabrovo, SubdivisionsBulgaria.veliko_tarnovo, SubdivisionsBulgaria.sliven, SubdivisionsBulgaria.yambol]
        case .targovishte:
            return [SubdivisionsBulgaria.ruse, SubdivisionsBulgaria.razgrad, SubdivisionsBulgaria.shumen, SubdivisionsBulgaria.sliven, SubdivisionsBulgaria.veliko_tarnovo]
        case .varna:
            return [SubdivisionsBulgaria.dobrich, SubdivisionsBulgaria.shumen, SubdivisionsBulgaria.burgas]
        case .veliko_tarnovo:
            return [SubdivisionsBulgaria.pleven, SubdivisionsBulgaria.lovech, SubdivisionsBulgaria.gabrovo, SubdivisionsBulgaria.stara_zagora, SubdivisionsBulgaria.sliven, SubdivisionsBulgaria.targovishte, SubdivisionsBulgaria.ruse]
        case .vidin:
            return [SubdivisionsBulgaria.montana]
        case .vratsa:
            return [SubdivisionsBulgaria.montana, SubdivisionsBulgaria.sofia, SubdivisionsBulgaria.lovech, SubdivisionsBulgaria.pleven]
        case .yambol:
            return [SubdivisionsBulgaria.haskovo, SubdivisionsBulgaria.stara_zagora, SubdivisionsBulgaria.sliven, SubdivisionsBulgaria.burgas]
        }
    }
}
