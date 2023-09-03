//
//  SovereignStateLevel2Division.swift
//  
//
//  Created by Evan Anderson on 2/26/23.
//

import Foundation

public enum SovereignStateLevel2Divisions {
    public static var all:[any SovereignStateLevel2Division] = {
        return SovereignStateSubdivisions.all.compactMap({ $0.counties }).flatMap({ $0 })
    }()
}

public protocol SovereignStateLevel2Division : SovereignRegion {
    /// The level-1 administrative unit this division is located in or claimed by.
    var subdivision : any SovereignStateSubdivision { get }
    var type : SovereignStateLevel2DivisionType { get }
    /// _Federal Information Processing Standard_ number or regional equivalent representing this division.
    var fips_code : Int { get }
}

public extension SovereignStateSubdivision {
    func valueOfLevel2DivisionIdentifier(_ string: String) -> (any SovereignStateLevel2Division)? {
        return counties_type?.init(rawValue: string)
    }
    
    func valueOfLevel2DivisionFIPSCode(_ code: Int) -> (any SovereignStateLevel2Division)? {
        return counties?.first(where: { $0.fips_code == code })
    }
}

public extension SovereignStateLevel2Division {
    init?(_ description: String) { // TODO: fix
        return nil
    }
    
    var cache_id : String {
        return subdivision.cache_id + "-" + rawValue
    }
    
    var name : String {
        let table:String = "Subdivisions2\(subdivision.country.name(forLocale: Locale.init(identifier: "en")) .replacingOccurrences(of: " ", with: ""))\(subdivision.name.replacingOccurrences(of: " ", with: ""))"
        let key:String.LocalizationValue = String.LocalizationValue(stringLiteral: rawValue + "_name_short")
        return String(localized: key, table: table, bundle: Bundle.module)
    }
    
    /// _Federal Information Processing Standard_ number or regional equivalent representing this division as a string, formatted as `###`.
    var fips_code_string : String {
        return (fips_code < 10 ? "00" : fips_code < 100 ? "0" : "") + "\(fips_code)"
    }
    
    internal var default_wikipedia_url_suffix : String? {
        let type_suffix:String = (type == .independent_cities ? "City" : type.name_singular.replacingOccurrences(of: " ", with: "_"))
        return "_" + type_suffix + ",_" + subdivision.name.replacingOccurrences(of: " ", with: "_")
    }
    var wikipedia_url_suffix : String? {
        return default_wikipedia_url_suffix
    }
    
    var currencies : [Currency] {
        return subdivision.currencies
    }
}
