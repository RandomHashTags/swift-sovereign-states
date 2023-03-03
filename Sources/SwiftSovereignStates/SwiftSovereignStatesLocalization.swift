//
//  SwiftSovereignStatesLocalization.swift
//  
//
//  Created by Evan Anderson on 2/2/23.
//

import Foundation

private extension Bundle {
    private static func get_localization(language_code: String?, type: SwiftSovereignStateLocalizationCategory, replacements: [String:String]?, identifier: String) -> Bundle? {
        let language_code:String = "en"// language_code ?? String(Locale.current.identifier.prefix(2))
        var cache_id:String = language_code + "/" + type.rawValue
        if let replacements:[String:String] = replacements {
            for (key, replacement) in replacements {
                cache_id = cache_id.replacingOccurrences(of: "%" + key + "%", with: replacement)
            }
        }
        if let bundle:Bundle = SwiftSovereignStateCache.localization[cache_id] {
            return bundle
        }
        guard let localization_bundle:Bundle = Bundle(identifier: identifier) ?? Bundle(path: identifier),
              let path:String = localization_bundle.path(forResource: "Resources/_locale/" + cache_id, ofType: "lproj"),
              let bundle:Bundle = Bundle(path: path)
        else {
            return nil
        }
        SwiftSovereignStateCache.localization[cache_id] = bundle
        return bundle
    }
    static func get(language_code: String? = nil, type: SwiftSovereignStateLocalizationCategory, replacements: [String:String]? = nil, _ key: String) -> String {
        return (Bundle.get_localization(language_code: language_code, type: type, replacements: replacements, identifier: "org.cocoapods.SwiftSovereignStates")
                ?? Bundle.get_localization(language_code: language_code, type: type, replacements: replacements, identifier: Bundle(for: SwiftSovereignStates.self).bundleIdentifier!)
                ?? Bundle.get_localization(language_code: language_code, type: type, replacements: replacements, identifier: "/Users/randomhashtags/GitProjects/swift-sovereign-states/Sources/SwiftSovereignStates"))?.localizedString(forKey: key, value: "nil", table: nil) ?? "nil"
    }
}
private enum SwiftSovereignStateLocalizationCategory : String {
    case country_names = "region_names/country"
    case subdivision_level_1_names = "region_names/subdivisions/level_1/%country%"
    case subdivision_level_2_names = "region_names/subdivisions/level_2/%country%/%subdivision%"
    case currencies
    
    case subdivision_types = "subdivision/types"
}
public enum SwiftSovereignStateLocalization {
    public static func get_country_name(_ country: Country, language_code: String? = nil) -> String {
        return Bundle.get(language_code: language_code, type: SwiftSovereignStateLocalizationCategory.country_names, country.rawValue)
    }
    public static func get_subdivision_level_1_name(_ region: any SovereignStateSubdivision, language_code: String? = nil) -> String {
        return Bundle.get(language_code: language_code, type: SwiftSovereignStateLocalizationCategory.subdivision_level_1_names, replacements: ["country" : region.country.rawValue], region.rawValue)
    }
    public static func get_subdivision_level_2_name(_ region: any SovereignStateLevel2Division, language_code: String? = nil) -> String {
        let subdivision:any SovereignStateSubdivision = region.subdivision
        return Bundle.get(language_code: language_code, type: SwiftSovereignStateLocalizationCategory.subdivision_level_2_names, replacements: ["country" : subdivision.country.rawValue, "subdivision" : subdivision.rawValue], region.rawValue)
    }
    
    
    public static func get_currency_name(_ currency: Currency, language_code: String? = nil) -> String {
        return Bundle.get(language_code: language_code, type: SwiftSovereignStateLocalizationCategory.currencies, currency.rawValue + "_name")
    }
    
    public static func get_subdivision_type_name_singular(_ type: SovereignStateSubdivisionType, language_code: String? = nil) -> String {
        return Bundle.get(language_code: language_code, type: SwiftSovereignStateLocalizationCategory.subdivision_types, type.rawValue + "_name_singular")
    }
    public static func get_subdivision_type_name_plural(_ type: SovereignStateSubdivisionType, language_code: String? = nil) -> String {
        return Bundle.get(language_code: language_code, type: SwiftSovereignStateLocalizationCategory.subdivision_types, type.rawValue + "_name_plural")
    }
}
