//
//  SubdivisionsPanamaLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsPanamaLevel1 = Locale.Region.Subdivision.Level1.Panama

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.panama, allSameType: false, type: Locale.Region.SubdivisionType.province)
    struct Panama : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .emberá,
                    .gunaYala,
                    .nasoTjërDi,
                    .ngäbeBuglé:
                return Locale.Region.SubdivisionType.indigenousProvince
            default:
                return Locale.Region.SubdivisionType.province
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsPanamaLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Panama | https://en.wikipedia.org/wiki/ISO_3166-2:PA
    static let bocasDelToro = get("1")
    static let chiriquí = get("4")
    static let coclé = get("2")
    static let colón = get("3")
    static let darién = get("5")
    static let herrera = get("6")
    static let losSantos = get("7")
    static let panamá = get("8")
    static let panamáOeste = get("10")
    static let veraguas = get("9")
    
    static let emberá = get("EM")
    static let gunaYala = get("KY")
    static let nasoTjërDi = get("NT")
    static let ngäbeBuglé = get("NB")
}
