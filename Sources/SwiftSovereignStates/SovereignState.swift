//
//  SovereignState.swift
//  
//
//  Created by Evan Anderson on 6/13/22.
//

import Foundation

public protocol SovereignState : SovereignRegion {
    func getISOAlpha2() -> String?
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
