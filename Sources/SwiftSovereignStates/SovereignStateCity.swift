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
}

public extension SovereignStateCity {
    var cacheID : String {
        return subdivision.cacheID + "-"// + rawValue
    }
    var currencies : [Currency] {
        return subdivision.currencies
    }
    
    var isCapital : Bool {
        return capital == self
    }
}
