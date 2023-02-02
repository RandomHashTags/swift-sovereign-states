//
//  SovereignState.swift
//  
//
//  Created by Evan Anderson on 6/13/22.
//

import Foundation

public protocol SovereignState : SovereignRegion {
    /// The ISO 3166-1 alpha-2 code for this SovereignState. Country codes are defined at https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 . Subdivision codes are defined at https://en.wikipedia.org/wiki/ISO_3166-2 .
    var iso_alpha_2 : String? { get }
    /// The ISO 3166-1 alpha-3 code for this SovereignState. Country codes are defined at https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3 .
    func getISOAlpha3() -> String?
}
public extension SovereignState {
    func getSovereignStateAdditionalKeywords() -> [String]? {
        var keywords:[String] = [String]()
        if let isoAlpha2:String = iso_alpha_2 {
            keywords.append(isoAlpha2)
        }
        if let isoAlpha3:String = getISOAlpha3() {
            keywords.append(isoAlpha3)
        }
        return keywords.isEmpty ? nil : keywords
    }
    func getAdditionalKeywords() -> [String]? {
        return getSovereignStateAdditionalKeywords()
    }
}
