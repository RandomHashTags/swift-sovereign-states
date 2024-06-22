//
//  SubdivisionsUzbekistanLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsUzbekistanLevel1 = Locale.Region.Subdivision.Level1.Uzbekistan

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.uzbekistan, allSameType: false, type: Locale.Region.SubdivisionType.region)
    struct Uzbekistan : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .karakalpakstan:
                return Locale.Region.SubdivisionType.autonomousRepublic
            case .tashkent:
                return Locale.Region.SubdivisionType.independentCity
            default:
                return Locale.Region.SubdivisionType.region
            }
        }
    }
}

public extension SubdivisionsUzbekistanLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Uzbekistan | https://en.wikipedia.org/wiki/ISO_3166-2:UZ
    static let andijan = get("AN")
    static let bukhara = get("BU")
    static let fergana = get("FA")
    static let jizzakh = get("JI")
    static let karakalpakstan = get("QR")
    static let namangan = get("NG")
    static let navoiy = get("NW")
    static let qashqadaryo = get("QA")
    static let samarqand = get("SA")
    static let sirdaryo = get("SI")
    static let surxondaryo = get("SU")
    static let tashkent = get("TO")
    static let tashkent_region = get("TO")
    static let xorazm = get("XO")
}

// MARK: Neighbors
public extension SubdivisionsUzbekistanLevel1 {
    var neighbors : [any Locale.Region.Subdivision.Level1Protocol] {
        switch self {
        case .andijan:
            return [SubdivisionsUzbekistanLevel1.namangan, SubdivisionsUzbekistanLevel1.fergana]
        case .bukhara:
            return [SubdivisionsUzbekistanLevel1.karakalpakstan, SubdivisionsUzbekistanLevel1.navoiy, SubdivisionsUzbekistanLevel1.samarqand, SubdivisionsUzbekistanLevel1.qashqadaryo]
        case .fergana:
            return [SubdivisionsUzbekistanLevel1.namangan, SubdivisionsUzbekistanLevel1.andijan]
        case .jizzakh:
            return [SubdivisionsUzbekistanLevel1.navoiy, SubdivisionsUzbekistanLevel1.samarqand, SubdivisionsUzbekistanLevel1.sirdaryo]
        case .karakalpakstan:
            return [SubdivisionsUzbekistanLevel1.xorazm, SubdivisionsUzbekistanLevel1.navoiy, SubdivisionsUzbekistanLevel1.bukhara]
        case .namangan:
            return [SubdivisionsUzbekistanLevel1.tashkent_region, SubdivisionsUzbekistanLevel1.fergana, SubdivisionsUzbekistanLevel1.andijan]
        case .navoiy:
            return [SubdivisionsUzbekistanLevel1.karakalpakstan, SubdivisionsUzbekistanLevel1.bukhara, SubdivisionsUzbekistanLevel1.qashqadaryo, SubdivisionsUzbekistanLevel1.samarqand, SubdivisionsUzbekistanLevel1.jizzakh]
        case .qashqadaryo:
            return [SubdivisionsUzbekistanLevel1.bukhara, SubdivisionsUzbekistanLevel1.navoiy, SubdivisionsUzbekistanLevel1.samarqand, SubdivisionsUzbekistanLevel1.surxondaryo]
        case .samarqand:
            return [SubdivisionsUzbekistanLevel1.qashqadaryo, SubdivisionsUzbekistanLevel1.bukhara, SubdivisionsUzbekistanLevel1.navoiy, SubdivisionsUzbekistanLevel1.jizzakh]
        case .sirdaryo:
            return [SubdivisionsUzbekistanLevel1.jizzakh, SubdivisionsUzbekistanLevel1.tashkent_region]
        case .surxondaryo:
            return [SubdivisionsUzbekistanLevel1.qashqadaryo]
        case .tashkent:
            return [SubdivisionsUzbekistanLevel1.tashkent_region]
        case .tashkent_region:
            return [SubdivisionsUzbekistanLevel1.tashkent, SubdivisionsUzbekistanLevel1.sirdaryo, SubdivisionsUzbekistanLevel1.namangan]
        case .xorazm:
            return [SubdivisionsUzbekistanLevel1.karakalpakstan]
        default:
            return []
        }
    }
}