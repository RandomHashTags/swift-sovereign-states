//
//  SwiftSovereignStatesLocalization.swift
//  
//
//  Created by Evan Anderson on 2/2/23.
//

import Foundation

public enum SwiftSovereignStateLocalization {
}
public extension SwiftSovereignStateLocalization {
    static func get_release_subdivision_type_name_singular(_ type: SovereignStateSubdivisionType) -> String {
        let key:String.LocalizationValue = String.LocalizationValue(stringLiteral: type.rawValue + "_name")
        return String(localized: key, table: "SubdivisionTypes", bundle: Bundle.module)
    }
    static func get_release_subdivision_type_name_plural(_ type: SovereignStateSubdivisionType) -> String {
        let key:String.LocalizationValue = String.LocalizationValue(stringLiteral: type.rawValue + "_name")
        return String(localized: key, table: "SubdivisionTypes", bundle: Bundle.module)
    }
}
