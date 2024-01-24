//
//  SovereignStateSubdivision.swift
//  
//
//  Created by Evan Anderson on 6/16/22.
//

import Foundation

public protocol SovereignStateSubdivision : SovereignState { // https://en.wikipedia.org/wiki/List_of_administrative_divisions_by_country
    /// The country this subdivision's administrative borders are claimed by.
    var country : Locale.Region { get }
    var type : SovereignStateSubdivisionType { get }
    var type_suffix : String { get }
    
    /// The neighboring subdivisions, in relation the its administrative borders.
    var neighbors : [any SovereignStateSubdivision] { get }
}

public extension SovereignStateSubdivision {
    var cacheID : String {
        return country.identifier + "-" + rawValue
    }
    
    var wikipediaURLSuffix : String? {
        return "_" + type_suffix
    }
    var type_suffix : String {
        return type.name_singular.replacingOccurrences(of: " ", with: "_")
    }
}
