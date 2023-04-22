//
//  SwiftSovereignStatesLocalization.swift
//  
//
//  Created by Evan Anderson on 2/2/23.
//

import Foundation

private extension Bundle {
    private static func get_debug_localization(language_code: String?, type: SwiftSovereignStateLocalizationCategory, replacements: [String:String]?, identifier: String) -> Bundle? {
        let language_code:String = language_code ?? String(Locale.current.identifier.prefix(2))
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
    private static func get_release_localization(language_code: String?, identifier: String) -> Bundle? {
        let language_code:String = "en"// language_code ?? String(Locale.current.identifier.prefix(2))
        if let bundle:Bundle = SwiftSovereignStateCache.localization[language_code] {
            return bundle
        }
        guard let localization_bundle:Bundle = Bundle(identifier: identifier) ?? Bundle(path: identifier),
              let path:String = localization_bundle.path(forResource: "Localization/" + language_code, ofType: "lproj"),
              let bundle:Bundle = Bundle(path: path)
        else {
            return nil
        }
        SwiftSovereignStateCache.localization[language_code] = bundle
        return bundle
    }
    static func get_debug(language_code: String? = nil, type: SwiftSovereignStateLocalizationCategory, replacements: [String:String]? = nil, _ key: String) -> String {
        guard let bundle:Bundle = (Bundle.get_debug_localization(language_code: language_code, type: type, replacements: replacements, identifier: "org.cocoapods.SwiftSovereignStates")
                                   ?? Bundle.get_debug_localization(language_code: language_code, type: type, replacements: replacements, identifier: Bundle(for: SwiftSovereignStates.self).bundleIdentifier!)
                                   ?? Bundle.get_debug_localization(language_code: language_code, type: type, replacements: replacements, identifier: "/Users/randomhashtags/GitProjects/swift-sovereign-states/Sources/SwiftSovereignStates")) else {
            return "nil"
        }
        return bundle.localizedString(forKey: key, value: "nil", table: nil)
    }
    static func get_release(language_code: String? = nil, _ key: String) -> String {
        guard let bundle:Bundle = (Bundle.get_release_localization(language_code: language_code, identifier: "org.cocoapods.SwiftSovereignStates")
                                   ?? Bundle.get_release_localization(language_code: language_code, identifier: Bundle(for: SwiftSovereignStates.self).bundleIdentifier!)
                                   ?? Bundle.get_release_localization(language_code: language_code, identifier: "/Users/randomhashtags/GitProjects/swift-sovereign-states/Sources/SwiftSovereignStates")) else {
            return "nil"
        }
        return bundle.localizedString(forKey: key, value: "nil", table: nil)
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
    public static func get_debug_country_name(_ country: Country, language_code: String? = nil) -> String {
        return Bundle.get_debug(language_code: language_code, type: SwiftSovereignStateLocalizationCategory.country_names, country.rawValue)
    }
    public static func get_debug_subdivision_level_1_name(_ region: any SovereignStateSubdivision, language_code: String? = nil) -> String {
        return Bundle.get_debug(language_code: language_code, type: SwiftSovereignStateLocalizationCategory.subdivision_level_1_names, replacements: ["country" : region.country.rawValue], region.rawValue)
    }
    public static func get_debug_subdivision_level_2_name(_ region: any SovereignStateLevel2Division, language_code: String? = nil) -> String {
        let subdivision:any SovereignStateSubdivision = region.subdivision
        return Bundle.get_debug(language_code: language_code, type: SwiftSovereignStateLocalizationCategory.subdivision_level_2_names, replacements: ["country" : subdivision.country.rawValue, "subdivision" : subdivision.rawValue], region.rawValue)
    }
    
    public static func get_debug_currency_name(_ currency: Currency, language_code: String? = nil) -> String {
        return Bundle.get_debug(language_code: language_code, type: SwiftSovereignStateLocalizationCategory.currencies, currency.rawValue + "_name")
    }
    
    public static func get_debug_subdivision_type_name_singular(_ type: SovereignStateSubdivisionType, language_code: String? = nil) -> String {
        return Bundle.get_debug(language_code: language_code, type: SwiftSovereignStateLocalizationCategory.subdivision_types, type.rawValue + "_name_singular")
    }
    public static func get_debug_subdivision_type_name_plural(_ type: SovereignStateSubdivisionType, language_code: String? = nil) -> String {
        return Bundle.get_debug(language_code: language_code, type: SwiftSovereignStateLocalizationCategory.subdivision_types, type.rawValue + "_name_plural")
    }
}
public extension SwiftSovereignStateLocalization {
    static func get_release_sovereign_region_name(_ region: any SovereignRegion, language_code: String? = nil) -> String {
        return Bundle.get_release(language_code: language_code, region.cache_id)
    }
    
    static func get_release_currency_name(_ currency: Currency, language_code: String? = nil) -> String {
        return Bundle.get_release(language_code: language_code, currency.rawValue)
    }
    
    static func get_release_subdivision_type_name_singular(_ type: SovereignStateSubdivisionType, language_code: String? = nil) -> String {
        return Bundle.get_release(language_code: language_code, type.rawValue + "_s")
    }
    static func get_release_subdivision_type_name_plural(_ type: SovereignStateSubdivisionType, language_code: String? = nil) -> String {
        return Bundle.get_release(language_code: language_code, type.rawValue + "_p")
    }
}
