//
//  SubdivisionsDominicaLevel1.swift
//  
//
//  Created by Evan Anderson on 6/22/22.
//

import Foundation

public typealias SubdivisionsDominicaLevel1 = Locale.Region.Subdivision.Level1.Dominica

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.dominica, allSameType: true, type: Locale.Region.SubdivisionType.parish)
    struct Dominica : Locale.Region.Subdivision.Level1Protocol {
    }
}

public extension SubdivisionsDominicaLevel1 { // https://en.wikipedia.org/wiki/Parishes_of_Dominica | https://en.wikipedia.org/wiki/ISO_3166-2:DM
    static let saintAndrew = get("02")
    static let saintDavid = get("03")
    static let saintGeorge = get("04")
    static let saintJohn = get("05")
    static let saintJoseph = get("06")
    static let saintLuke = get("07")
    static let saintMark = get("08")
    static let saintPatrick = get("09")
    static let saintPaul = get("10")
    static let saintPeter = get("11")
    
    var neighbors : [any Locale.Region.Subdivision.Level1Protocol] {
        switch self {
        case .saintAndrew:
            return [SubdivisionsDominicaLevel1.saintJohn, SubdivisionsDominicaLevel1.saintPeter, SubdivisionsDominicaLevel1.saintJoseph, SubdivisionsDominicaLevel1.saintDavid]
        case .saintDavid:
            return [SubdivisionsDominicaLevel1.saintAndrew, SubdivisionsDominicaLevel1.saintJoseph, SubdivisionsDominicaLevel1.saintPaul, SubdivisionsDominicaLevel1.saintGeorge, SubdivisionsDominicaLevel1.saintPatrick]
        case .saintGeorge:
            return [SubdivisionsDominicaLevel1.saintPaul, SubdivisionsDominicaLevel1.saintDavid, SubdivisionsDominicaLevel1.saintPatrick, SubdivisionsDominicaLevel1.saintLuke]
        case .saintJohn:
            return [SubdivisionsDominicaLevel1.saintAndrew, SubdivisionsDominicaLevel1.saintPeter]
        case .saintJoseph:
            return [SubdivisionsDominicaLevel1.saintPeter, SubdivisionsDominicaLevel1.saintAndrew, SubdivisionsDominicaLevel1.saintDavid, SubdivisionsDominicaLevel1.saintPaul]
        case .saintLuke:
            return [SubdivisionsDominicaLevel1.saintGeorge, SubdivisionsDominicaLevel1.saintPatrick, SubdivisionsDominicaLevel1.saintMark]
        case .saintMark:
            return [SubdivisionsDominicaLevel1.saintLuke, SubdivisionsDominicaLevel1.saintPatrick]
        case .saintPatrick:
            return [SubdivisionsDominicaLevel1.saintMark, SubdivisionsDominicaLevel1.saintLuke, SubdivisionsDominicaLevel1.saintGeorge, SubdivisionsDominicaLevel1.saintDavid]
        case .saintPaul:
            return [SubdivisionsDominicaLevel1.saintJoseph, SubdivisionsDominicaLevel1.saintDavid, SubdivisionsDominicaLevel1.saintGeorge]
        case .saintPeter:
            return [SubdivisionsDominicaLevel1.saintJohn, SubdivisionsDominicaLevel1.saintAndrew, SubdivisionsDominicaLevel1.saintJoseph]
        default:
            return []
        }
    }
}
