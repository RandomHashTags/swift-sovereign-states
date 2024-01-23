//
//  SovereignStateCity.swift
//
//
//  Created by Evan Anderson on 7/19/22.
//

import Foundation

public protocol SovereignStateCity : SovereignRegion {
    /// The subdivision that this city's administrative borders are located in.
    var subdivision : any SovereignStateSubdivision { get }
    var capital : Self { get }
    
    var type : SovereignStateCityType { get }
}

public extension SovereignStateCity {
    var cacheID : String {
        return subdivision.cacheID + "-" + rawValue
    }
    var currencies : [Currency] {
        return subdivision.currencies
    }
    
    var type : SovereignStateCityType {
        return SovereignStateCityType.city
    }
    
    var isCapital : Bool {
        return capital == self
    }
    
    func getDefaultWikipediaURLSuffix() -> String {
        let subdivision:any SovereignStateSubdivision = subdivision
        return ",_" + subdivision.name.replacingOccurrences(of: " ", with: "_")
    }
    var wikipediaURLSuffix : String? {
        return getDefaultWikipediaURLSuffix()
    }
}

public extension SovereignStateSubdivision {
    func valueOfCityIdentifier(_ string: String) -> (any SovereignStateCity)? {
        return citiesType?.init(rawValue: string)
    }
}
