//
//  SubdivisionsUzbekistan.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsUzbekistan : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Regions_of_Uzbekistan
    case andijan
    case bukhara
    case fergana
    case jizzakh
    case karakalpakstan
    case namangan
    case navoiy
    case qashqadaryo
    case samarqand
    case sirdaryo
    case surxondaryo
    case tashkent
    case tashkent_region
    case xorazm
    
    public var country : Locale.Region {
        return Locale.Region.uzbekistan
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .karakalpakstan:
            return SovereignStateSubdivisionType.autonomous_republics
        case .tashkent:
            return SovereignStateSubdivisionType.independent_cities
        default:
            return SovereignStateSubdivisionType.regions
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .karakalpakstan,
                .tashkent,
                .tashkent_region:
            return nil
        default:
            return nil
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .karakalpakstan: return "1/16/Flag_of_Karakalpakstan"
        case .tashkent: return "4/4a/Flag_of_Tashkent"
        default: return nil
        }
    }
    
    public var neighbors : [any SovereignStateSubdivision] {
        switch self {
        case .andijan:
            return [SubdivisionsUzbekistan.namangan, SubdivisionsUzbekistan.fergana]
        case .bukhara:
            return [SubdivisionsUzbekistan.karakalpakstan, SubdivisionsUzbekistan.navoiy, SubdivisionsUzbekistan.samarqand, SubdivisionsUzbekistan.qashqadaryo]
        case .fergana:
            return [SubdivisionsUzbekistan.namangan, SubdivisionsUzbekistan.andijan]
        case .jizzakh:
            return [SubdivisionsUzbekistan.navoiy, SubdivisionsUzbekistan.samarqand, SubdivisionsUzbekistan.sirdaryo]
        case .karakalpakstan:
            return [SubdivisionsUzbekistan.xorazm, SubdivisionsUzbekistan.navoiy, SubdivisionsUzbekistan.bukhara]
        case .namangan:
            return [SubdivisionsUzbekistan.tashkent_region, SubdivisionsUzbekistan.fergana, SubdivisionsUzbekistan.andijan]
        case .navoiy:
            return [SubdivisionsUzbekistan.karakalpakstan, SubdivisionsUzbekistan.bukhara, SubdivisionsUzbekistan.qashqadaryo, SubdivisionsUzbekistan.samarqand, SubdivisionsUzbekistan.jizzakh]
        case .qashqadaryo:
            return [SubdivisionsUzbekistan.bukhara, SubdivisionsUzbekistan.navoiy, SubdivisionsUzbekistan.samarqand, SubdivisionsUzbekistan.surxondaryo]
        case .samarqand:
            return [SubdivisionsUzbekistan.qashqadaryo, SubdivisionsUzbekistan.bukhara, SubdivisionsUzbekistan.navoiy, SubdivisionsUzbekistan.jizzakh]
        case .sirdaryo:
            return [SubdivisionsUzbekistan.jizzakh, SubdivisionsUzbekistan.tashkent_region]
        case .surxondaryo:
            return [SubdivisionsUzbekistan.qashqadaryo]
        case .tashkent:
            return [SubdivisionsUzbekistan.tashkent_region]
        case .tashkent_region:
            return [SubdivisionsUzbekistan.tashkent, SubdivisionsUzbekistan.sirdaryo, SubdivisionsUzbekistan.namangan]
        case .xorazm:
            return [SubdivisionsUzbekistan.karakalpakstan]
        }
    }
}
