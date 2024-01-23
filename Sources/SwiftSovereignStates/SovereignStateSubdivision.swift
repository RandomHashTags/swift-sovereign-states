//
//  SovereignStateSubdivision.swift
//  
//
//  Created by Evan Anderson on 6/16/22.
//

import Foundation

public protocol SovereignStateSubdivision : SovereignState { // https://en.wikipedia.org/wiki/List_of_first-level_administrative_divisions_by_country
    /// The country this subdivision's administrative borders are claimed by.
    var country : Locale.Region { get }
    var type : SovereignStateSubdivisionType { get }
    var type_suffix : String { get }
    
    /// The neighboring subdivisions, in relation the its administrative borders.
    var neighbors : [any SovereignStateSubdivision] { get }
    
    /// The level-2 administrative units' type this subdivision contains.
    var countiesType : (any SovereignStateLevel2Division.Type)? { get }
    /// The level-2 administrative units this subdivision contains.
    var counties : [any SovereignStateLevel2Division]? { get }
    
    /// The level-3 administrative units' type this subdivision contains.
    var citiesType : (any SovereignStateCity.Type)? { get }
    /// The level-3 administrative units this subdivision contains.
    var cities : [any SovereignStateCity]? { get }
}

public extension SovereignStateSubdivision {
    var cacheID : String {
        return country.identifier + "-" + rawValue
    }
    
    var isoAlpha2 : String? {
        return nil
    }
    var isoAlpha3 : String? {
        return nil
    }
    var currencies : [Currency] {
        return [] // TODO: fix
    }
    
    var wikipediaURLSuffix : String? {
        return "_" + type_suffix
    }
    var type_suffix : String {
        return type.name_singular.replacingOccurrences(of: " ", with: "_")
    }
    
    var neighbors : [any SovereignStateSubdivision] {
        return []
    }
    
    var counties : [any SovereignStateLevel2Division]? {
        return countiesType?.allCases as? [any SovereignStateLevel2Division]
    }
    
    var cities : [any SovereignStateCity]? {
        return citiesType?.allCases as? [any SovereignStateCity]
    }
}
