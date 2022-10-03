//
//  SubdivisionsSriLanka.swift
//  
//
//  Created by Evan Anderson on 7/30/22.
//

import Foundation

public enum SubdivisionsSriLanka : String, CaseIterable, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/Provinces_of_Sri_Lanka
    case central
    case eastern
    case north_central
    case north_western
    case northern
    case sabaragamuwa
    case southern
    case uva
    case western
    
    public func getCountry() -> Country {
        return Country.sri_lanka
    }
    
    public func getType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.provinces
    }
    
    public func getWikipediaURLSuffix() -> String? {
        switch self {
        case .sabaragamuwa,
                .uva:
            return "_" + getTypeSuffix()
        default:
            return "_" + getTypeSuffix() + ",_Sri_Lanka"
        }
    }
    
    public func getFlagURLWikipediaSVGID() -> String? {
        switch self {
        case .central: return "f/fc/Central_Province.png"
        case .eastern: return "d/dd/Eastern_Province_Flag_%28SRI_LANKA%29.png"
        case .north_central: return "3/3f/Flag_of_the_North_Central_Province_%28Sri_Lanka%29.PNG"
        case .north_western: return "7/70/Flag_of_the_North_Western_Province_%28Sri_Lanka%29"
        case .northern: return "f/f8/Flag_of_the_Northern_Province"
        case .sabaragamuwa: return "a/ac/Flag_of_the_Sabaragamuwa_Province_%28Sri_Lanka%29.PNG"
        case .southern: return "b/b3/Flag_of_the_Southern_Province_%28Sri_Lanka%29.PNG"
        case .uva: return "6/6d/Flag_of_the_Uva_Province_%28Sri_Lanka%29_SVG"
        case .western: return "e/e8/Western_Province_Flag_%28SRI_LANKA%29.png"
        }
    }
}
