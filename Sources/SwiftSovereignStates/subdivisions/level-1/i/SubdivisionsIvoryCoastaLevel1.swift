//
//  SubdivisionsIvoryCoastaLevel1.swift
//  
//
//  Created by Evan Anderson on 9/30/22.
//

import Foundation

public typealias SubdivisionsIvoryCoastaLevel1 = Locale.Region.Subdivision.Level1.IvoryCoast

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.côteDIvoire, allSameType: false, type: Locale.Region.SubdivisionType.district)
    struct IvoryCoast : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .abidjan,
                    .yamoussoukro:
                return Locale.Region.SubdivisionType.autonomousDistrict
            default:
                return Locale.Region.SubdivisionType.district
            }
        }
    }
}

@SubdivisionCases
public extension SubdivisionsIvoryCoastaLevel1 { // https://en.wikipedia.org/wiki/Districts_of_Ivory_Coast | https://en.wikipedia.org/wiki/ISO_3166-2:CI
    static let bas_sassandra = get("BS")
    static let comoe = get("CM")
    static let denguele = get("DN")
    static let goh_djiboua = get("GD")
    static let lacs = get("LC")
    static let lagunes = get("LG")
    static let montagnes = get("MG")
    static let sassandra_marahoue = get("SM")
    static let savanes = get("SV")
    static let vallee_du_bandama = get("VB")
    static let woroba = get("WR")
    static let zanzan = get("ZZ")
    
    static let abidjan = get("AB")
    static let yamoussoukro = get("YM")
}
