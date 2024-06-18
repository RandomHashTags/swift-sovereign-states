//
//  SovereignStateSubdivision.swift
//  
//
//  Created by Evan Anderson on 6/16/22.
//

import Foundation

public protocol SovereignStateSubdivision : SovereignState { // https://en.wikipedia.org/wiki/List_of_administrative_divisions_by_country
    /// The country this subdivision's administrative borders are claimed by.
    var region:Locale.Region { get }
    var typeSuffix:String { get }
}

public extension SovereignStateSubdivision {
    var cacheID : String {
        return region.identifier + "-"// + rawValue
    }
    
    var wikipediaURLSuffix : String? {
        return "_" + type_suffix
    }
    var type_suffix : String {
        return ""//type.name_singular.replacingOccurrences(of: " ", with: "_")
    }
}
