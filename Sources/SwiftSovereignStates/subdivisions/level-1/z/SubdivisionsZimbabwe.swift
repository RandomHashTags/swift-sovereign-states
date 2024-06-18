//
//  SubdivisionsZimbabwe.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public enum SubdivisionsZimbabwe : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Zimbabwe
    case bulawayo
    case harare
    case manicaland
    case mashonaland_central
    case mashonaland_east
    case mashonaland_west
    case masvingo
    case matabeleland_north
    case matabeleland_south
    case midlands
    
    public var country : Locale.Region {
        return Locale.Region.zimbabwe
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .bulawayo,
                .harare:
            return SovereignStateSubdivisionType.cities
        default:
            return SovereignStateSubdivisionType.provinces
        }
    }
    
    public var wikipediaFlagURLSvgID : String? {
        switch self {
        case .bulawayo: return "3/35/Flag_of_Bulawayo"
        case .harare: return "e/e7/Flag_of_Harare"
        case .manicaland: return nil
        case .mashonaland_central: return nil
        case .mashonaland_east: return nil
        case .mashonaland_west: return nil
        case .masvingo: return nil
        case .matabeleland_north: return nil
        case .matabeleland_south: return nil
        case .midlands: return nil
        }
    }
    
    public var wikipediaURLSuffix : String? {
        switch self {
        case .bulawayo:
            return nil
        default:
            return "_" + type_suffix
        }
    }
    
    public var neighbors : [any SovereignStateSubdivision] {
        switch self {
        case .bulawayo:
            return [SubdivisionsZimbabwe.matabeleland_north, SubdivisionsZimbabwe.matabeleland_south]
        case .harare:
            return [SubdivisionsZimbabwe.mashonaland_west, SubdivisionsZimbabwe.mashonaland_central, SubdivisionsZimbabwe.mashonaland_east]
        case .manicaland:
            return [SubdivisionsZimbabwe.masvingo, SubdivisionsZimbabwe.mashonaland_east]
        case .mashonaland_central:
            return [SubdivisionsZimbabwe.mashonaland_west, SubdivisionsZimbabwe.harare, SubdivisionsZimbabwe.mashonaland_east]
        case .mashonaland_east:
            return [SubdivisionsZimbabwe.mashonaland_west, SubdivisionsZimbabwe.harare, SubdivisionsZimbabwe.mashonaland_central, SubdivisionsZimbabwe.midlands, SubdivisionsZimbabwe.masvingo, SubdivisionsZimbabwe.manicaland]
        case .mashonaland_west:
            return [SubdivisionsZimbabwe.harare, SubdivisionsZimbabwe.mashonaland_central, SubdivisionsZimbabwe.mashonaland_east, SubdivisionsZimbabwe.midlands, SubdivisionsZimbabwe.matabeleland_north]
        case .masvingo:
            return [SubdivisionsZimbabwe.matabeleland_south, SubdivisionsZimbabwe.midlands, SubdivisionsZimbabwe.mashonaland_east, SubdivisionsZimbabwe.manicaland]
        case .matabeleland_north:
            return [SubdivisionsZimbabwe.bulawayo, SubdivisionsZimbabwe.matabeleland_south, SubdivisionsZimbabwe.midlands, SubdivisionsZimbabwe.mashonaland_west]
        case .matabeleland_south:
            return [SubdivisionsZimbabwe.matabeleland_north, SubdivisionsZimbabwe.bulawayo, SubdivisionsZimbabwe.midlands, SubdivisionsZimbabwe.masvingo]
        case .midlands:
            return [SubdivisionsZimbabwe.mashonaland_west, SubdivisionsZimbabwe.mashonaland_east, SubdivisionsZimbabwe.masvingo, SubdivisionsZimbabwe.matabeleland_south, SubdivisionsZimbabwe.matabeleland_north]
        }
    }
}
