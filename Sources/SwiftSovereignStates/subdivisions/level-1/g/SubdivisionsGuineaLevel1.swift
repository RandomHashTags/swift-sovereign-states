//
//  SubdivisionsGuineaLevel1.swift
//  
//
//  Created by Evan Anderson on 2/12/23.
//

import Foundation

public typealias SubdivisionsGuineaLevel1 = Locale.Region.Subdivision.Level1.Guinea

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.angola, allSameType: false, type: Locale.Region.SubdivisionType.region)
    struct Guinea : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .conakry:
                return Locale.Region.SubdivisionType.specialCity
            default:
                return Locale.Region.SubdivisionType.region
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsGuineaLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Guinea | https://en.wikipedia.org/wiki/ISO_3166-2:GN
    static let boke = get("B")
    static let faranah = get("F")
    static let kankan = get("K")
    static let kindia = get("D")
    static let labe = get("L")
    static let mamou = get("M")
    static let nzerekore = get("N")
    
    static let conakry = get("C")
}
