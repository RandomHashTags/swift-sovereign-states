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
        cache_id.append("_" + language_code)
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
        let debug_bundle:Bundle
        if let bundle:Bundle = Bundle.get_debug_localization(language_code: language_code, type: type, replacements: replacements, identifier: "org.cocoapods.SwiftSovereignStates") {
            debug_bundle = bundle
        } else if let bundle_identifier:String = Bundle(for: SwiftSovereignStates.self).bundleIdentifier, let bundle:Bundle = Bundle.get_debug_localization(language_code: language_code, type: type, replacements: replacements, identifier: bundle_identifier) {
            debug_bundle = bundle
        } else {
            var file_path:String = #file
            file_path.removeLast("/SwiftSovereignStatesLocalization.swift".count)
            if let bundle:Bundle = Bundle.get_debug_localization(language_code: language_code, type: type, replacements: replacements, identifier: file_path) {
                debug_bundle = bundle
            } else {
                return "nil"
            }
        }
        return debug_bundle.localizedString(forKey: key, value: "nil", table: nil)
    }
    static func get_release(language_code: String? = nil, _ key: String) -> String {
        let release_bundle:Bundle
        if let bundle:Bundle = Bundle.get_release_localization(language_code: language_code, identifier: "org.cocoapods.SwiftSovereignStates") {
            release_bundle = bundle
        } else if let bundle_identifier:String = Bundle(for: SwiftSovereignStates.self).bundleIdentifier, let bundle:Bundle = Bundle.get_release_localization(language_code: language_code, identifier: bundle_identifier) {
            release_bundle = bundle
        } else {
            var file_path:String = #file
            file_path.removeLast("/SwiftSovereignStatesLocalization.swift".count)
            if let bundle:Bundle = Bundle.get_release_localization(language_code: language_code, identifier: file_path) {
                release_bundle = bundle
            } else {
                return "nil"
            }
        }
        return release_bundle.localizedString(forKey: key, value: "nil", table: nil)
    }
}
private enum SwiftSovereignStateLocalizationCategory : String {
    case country_names = "region_names/country"
    case subdivision_level_1_names = "region_names/subdivisions/level_1/%country%"
    case subdivision_level_2_names = "region_names/subdivisions/level_2/%country%/%subdivision%2"
    case subdivision_level_3_names = "region_names/subdivisions/level_3/%country%/%subdivision%3"
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
    public static func get_debug_subdivision_level_3_name(_ region: any SovereignStateCity, language_code: String? = nil) -> String {
        let subdivision:any SovereignStateSubdivision = region.subdivision
        return Bundle.get_debug(language_code: language_code, type: SwiftSovereignStateLocalizationCategory.subdivision_level_3_names, replacements: ["country" : subdivision.country.rawValue, "subdivision" : subdivision.rawValue], region.rawValue)
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
