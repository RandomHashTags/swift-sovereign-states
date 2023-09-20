//
//  SovereignState.swift
//  
//
//  Created by Evan Anderson on 6/13/22.
//

import Foundation

public protocol SovereignState : SovereignRegion {
    /// The ISO 3166-1 alpha-2 code for this SovereignState. Country codes are defined at https://en.wikipedia.org/wiki/ISO_3166-1_alpha-2 . Subdivision codes are defined at https://en.wikipedia.org/wiki/ISO_3166-2 .
    var isoAlpha2 : String? { get }
    /// The ISO 3166-1 alpha-3 code for this SovereignState. Country codes are defined at https://en.wikipedia.org/wiki/ISO_3166-1_alpha-3 .
    var isoAlpha3 : String? { get }
}
public extension SovereignState {
    var sovereign_state_additional_keywords : Set<String>? {
        var keywords:Set<String> = Set<String>()
        if let isoAlpha2:String = isoAlpha2 {
            keywords.insert(isoAlpha2)
        }
        if let isoAlpha3:String = isoAlpha3 {
            keywords.insert(isoAlpha3)
        }
        return keywords.isEmpty ? nil : keywords
    }
    var additional_keywords : Set<String>? {
        return sovereign_state_additional_keywords
    }
}
