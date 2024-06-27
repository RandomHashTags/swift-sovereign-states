//
//  SubdivisionsIndiaLevel1.swift
//  
//
//  Created by Evan Anderson on 7/27/22.
//

import Foundation

public typealias SubdivisionsIndiaLevel1 = Locale.Region.Subdivision.Level1.India

public extension Locale.Region.Subdivision.Level1 {
    @SubdivisionLevel1(region: Locale.Region.india, allSameType: false, type: Locale.Region.SubdivisionType.state)
    struct India : Locale.Region.Subdivision.Level1Protocol {

        public var type : Locale.Region.SubdivisionType {
            switch self {
            case .andaman_and_nicobar_islands,
                    .chandigarh,
                    .dadra_and_nagar_haveli_and_daman_and_diu,
                    .delhi,
                    .jammu_and_kashmir,
                    .ladakh,
                    .lakshadweep,
                    .puducherry:
                return Locale.Region.SubdivisionType.unionTerritory
            default:
                return Locale.Region.SubdivisionType.state
            }
        }
    }
}

public extension SubdivisionsIndiaLevel1 { // https://en.wikipedia.org/wiki/States_and_union_territories_of_India
    static let andhra_pradesh = get("AP")
    static let arunachal_pradesh = get("AR")
    static let assam = get("AS")
    static let bihar = get("BR")
    static let chhattisgarh = get("CT")
    static let goa = get("GA")
    static let gujarat = get("GJ")
    static let haryana = get("HR")
    static let himachal_pradesh = get("HP")
    static let jharkhand = get("JH")
    static let karnataka = get("KA")
    static let kerala = get("KL")
    static let madhya_pradesh = get("MP")
    static let maharashtra = get("MH")
    static let manipur = get("MN")
    static let meghalaya = get("ML")
    static let mizoram = get("MZ")
    static let nagaland = get("NL")
    static let odisha = get("OR")
    static let punjab = get("PB")
    static let rajasthan = get("RJ")
    static let sikkim = get("SK")
    static let tamil_nadu = get("TN")
    static let telangana = get("TG")
    static let tripura = get("TR")
    static let uttar_pradesh = get("UP")
    static let uttarakhand = get("UT")
    static let west_bengal = get("WB")

    static let andaman_and_nicobar_islands = get("AN")
    static let chandigarh = get("CH")
    static let dadra_and_nagar_haveli_and_daman_and_diu = get("DH")
    static let delhi = get("DL")
    static let jammu_and_kashmir = get("JK")
    static let ladakh = get("LA")
    static let lakshadweep = get("LD")
    static let puducherry = get("PY")
}
