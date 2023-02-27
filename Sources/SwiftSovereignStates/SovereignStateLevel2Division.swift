//
//  SovereignStateLevel2Division.swift
//  
//
//  Created by Evan Anderson on 2/26/23.
//

import Foundation

public protocol SovereignStateLevel2Division : SovereignRegion {
    var subdivision : any SovereignStateSubdivision { get }
    var fips_code : Int { get }
}
public extension SovereignStateLevel2Division {
    var cache_id : String {
        return subdivision.cache_id + "-" + rawValue
    }
    var fips_code_string : String {
        return (fips_code < 10 ? "00" : fips_code < 100 ? "0" : "") + fips_code.description
    }
    
    init?(_ description: String) { // TODO: fix
        return nil
    }
    
    var currencies : [Currency] {
        return subdivision.currencies
    }
}
