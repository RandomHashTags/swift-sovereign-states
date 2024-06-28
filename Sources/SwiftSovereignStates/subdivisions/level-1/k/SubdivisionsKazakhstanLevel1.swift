//
//  SubdivisionsKazakhstanLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsKazakhstanLevel1 = Locale.Region.Subdivision.Level1.Kazakhstan

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.kazakhstan, allSameType: false, type: Locale.Region.SubdivisionType.region)
    struct Kazakhstan : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .almatyCity, .astana, .shymkent:
                return Locale.Region.SubdivisionType.city
            default:
                return Locale.Region.SubdivisionType.region
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsKazakhstanLevel1 { // https://en.wikipedia.org/wiki/Regions_of_Kazakhstan | https://en.wikipedia.org/wiki/ISO_3166-2:KZ
    static let abai = get("10")
    static let akmola = get("11")
    static let aktobe = get("15")
    static let almaty = get("19")
    static let atyrau = get("23")
    static let east_kazakhstan = get("63")
    static let jambyl = get("31")
    static let jetisu = get("33")
    static let karaganda = get("35")
    static let kostanay = get("39")
    static let kyzylorda = get("43")
    static let mangystau = get("47")
    static let north_kazakhstan = get("59")
    static let pavlodar = get("55")
    static let turkistan = get("61")
    static let ulytau = get("62")
    static let west_kazakhstan = get("27")

    static let astana = get("71")
    static let shymkent = get("79")
    static let almatyCity = get("75")
}
