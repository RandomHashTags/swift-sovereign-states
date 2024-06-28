//
//  SubdivisionsZimbabweLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsZimbabweLevel1 = Locale.Region.Subdivision.Level1.Zimbabwe

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.zimbabwe, allSameType: false, type: Locale.Region.SubdivisionType.province)
    struct Zimbabwe : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .bulawayo,
                    .harare:
                return Locale.Region.SubdivisionType.city
            default:
                return Locale.Region.SubdivisionType.province
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsZimbabweLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Zimbabwe | https://en.wikipedia.org/wiki/ISO_3166-2:ZW
    static let bulawayo = get("BU")
    static let harare = get("HA")
    static let manicaland = get("MA")
    static let mashonaland_central = get("MC")
    static let mashonaland_east = get("ME")
    static let mashonaland_west = get("MW")
    static let masvingo = get("MV")
    static let matabeleland_north = get("MN")
    static let matabeleland_south = get("MS")
    static let midlands = get("MI")
}

// MARK: Neighbors
public extension SubdivisionsZimbabweLevel1 {
    var neighbors : [any Locale.Region.Subdivision.Level1Protocol] {
        switch self {
        case .bulawayo:
            return [SubdivisionsZimbabweLevel1.matabeleland_north, SubdivisionsZimbabweLevel1.matabeleland_south]
        case .harare:
            return [SubdivisionsZimbabweLevel1.mashonaland_west, SubdivisionsZimbabweLevel1.mashonaland_central, SubdivisionsZimbabweLevel1.mashonaland_east]
        case .manicaland:
            return [SubdivisionsZimbabweLevel1.masvingo, SubdivisionsZimbabweLevel1.mashonaland_east]
        case .mashonaland_central:
            return [SubdivisionsZimbabweLevel1.mashonaland_west, SubdivisionsZimbabweLevel1.harare, SubdivisionsZimbabweLevel1.mashonaland_east]
        case .mashonaland_east:
            return [SubdivisionsZimbabweLevel1.mashonaland_west, SubdivisionsZimbabweLevel1.harare, SubdivisionsZimbabweLevel1.mashonaland_central, SubdivisionsZimbabweLevel1.midlands, SubdivisionsZimbabweLevel1.masvingo, SubdivisionsZimbabweLevel1.manicaland]
        case .mashonaland_west:
            return [SubdivisionsZimbabweLevel1.harare, SubdivisionsZimbabweLevel1.mashonaland_central, SubdivisionsZimbabweLevel1.mashonaland_east, SubdivisionsZimbabweLevel1.midlands, SubdivisionsZimbabweLevel1.matabeleland_north]
        case .masvingo:
            return [SubdivisionsZimbabweLevel1.matabeleland_south, SubdivisionsZimbabweLevel1.midlands, SubdivisionsZimbabweLevel1.mashonaland_east, SubdivisionsZimbabweLevel1.manicaland]
        case .matabeleland_north:
            return [SubdivisionsZimbabweLevel1.bulawayo, SubdivisionsZimbabweLevel1.matabeleland_south, SubdivisionsZimbabweLevel1.midlands, SubdivisionsZimbabweLevel1.mashonaland_west]
        case .matabeleland_south:
            return [SubdivisionsZimbabweLevel1.matabeleland_north, SubdivisionsZimbabweLevel1.bulawayo, SubdivisionsZimbabweLevel1.midlands, SubdivisionsZimbabweLevel1.masvingo]
        case .midlands:
            return [SubdivisionsZimbabweLevel1.mashonaland_west, SubdivisionsZimbabweLevel1.mashonaland_east, SubdivisionsZimbabweLevel1.masvingo, SubdivisionsZimbabweLevel1.matabeleland_south, SubdivisionsZimbabweLevel1.matabeleland_north]
        default:
            return []
        }
    }
}