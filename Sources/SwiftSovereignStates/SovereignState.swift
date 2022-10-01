//
//  SovereignState.swift
//  
//
//  Created by Evan Anderson on 6/13/22.
//

import Foundation

public protocol SovereignState : SovereignRegion {
    /// The ISO 3166-1 alpha-2 code for this SovereignRegion. Country codes are defined at https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 . Subdivision codes are defined at https://en.wikipedia.org/wiki/ISO_3166-2.
    func getISOAlpha2() -> String?
    /// The ISO 3166-1 alpha-3 code for this SovereignRegion. Country codes are defined at https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3 .
    func getISOAlpha3() -> String?
}
public extension SovereignState {
    func getAdditionalKeywords() -> [String]? {
        var keywords:[String] = [String]()
        if let isoAlpha2:String = getISOAlpha2() {
            keywords.append(isoAlpha2)
        }
        if let isoAlpha3:String = getISOAlpha3() {
            keywords.append(isoAlpha3)
        }
        return keywords
    }
}
