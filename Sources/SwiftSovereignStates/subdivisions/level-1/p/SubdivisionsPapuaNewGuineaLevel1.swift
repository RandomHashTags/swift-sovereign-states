//
//  SubdivisionsPapuaNewGuineaLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsPapuaNewGuineaLevel1 = Locale.Region.Subdivision.Level1.PapuaNewGuinea

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.papuaNewGuinea, allSameType: false, type: Locale.Region.SubdivisionType.province)
    struct PapuaNewGuinea : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .bougainville:
                return Locale.Region.SubdivisionType.autonomousRegion
            case .national_capital_district:
                return Locale.Region.SubdivisionType.incorporatedArea
            default:
                return Locale.Region.SubdivisionType.province
            }
        }
    }
}

public extension SubdivisionsPapuaNewGuineaLevel1 { // https://en.wikipedia.org/wiki/Provinces_of_Papua_New_Guinea | https://en.wikipedia.org/wiki/ISO_3166-2:PG
    static let bougainville = get("NSB")
    static let central = get("CPM")
    static let chimbu = get("CPK")
    static let east_new_britain = get("EBR")
    static let east_sepik = get("ESW")
    static let eastern_highlands = get("EHG")
    static let enga = get("EPW")
    static let gulf = get("GPK")
    static let hela = get("HLA")
    static let jiwaka = get("JWK")
    static let madang = get("MPM")
    static let manus = get("MRL")
    static let milne_bay = get("MBA")
    static let morobe = get("MPL")
    static let national_capital_district = get("NCD")
    static let new_ireland = get("NIK")
    static let oro = get("NPP")
    static let sandaun = get("SAN")
    static let southern_highlands = get("SHM")
    static let west_new_britain = get("WBK")
    static let western = get("WPD")
    static let western_highlands = get("WHM")
}