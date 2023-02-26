//
//  SwiftSovereignStatesLocalization.swift
//  
//
//  Created by Evan Anderson on 2/2/23.
//

import Foundation

private extension Bundle {
    private static func get_localization(language_code: String?, type: SwiftSovereignStateLocalizationCategory, identifier: String) -> Bundle? {
        let language_code:String = "en"// language_code ?? String(Locale.current.identifier.prefix(2))
        let cache_id:String = language_code + "/" + type.rawValue
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
    static func get(language_code: String? = nil, type: SwiftSovereignStateLocalizationCategory, _ key: String) -> String {
        return (Bundle.get_localization(language_code: language_code, type: type, identifier: "org.cocoapods.SwiftSovereignStates")
                ?? Bundle.get_localization(language_code: language_code, type: type, identifier: Bundle(for: SwiftSovereignStates.self).bundleIdentifier!)
                ?? Bundle.get_localization(language_code: language_code, type: type, identifier: "/Users/randomhashtags/GitProjects/swift-sovereign-states/Sources/SwiftSovereignStates"))?.localizedString(forKey: key, value: "nil", table: nil) ?? "nil"
    }
}
private enum SwiftSovereignStateLocalizationCategory : String {
    case country_short_names = "country/short_names"
    case currencies
    
    case subdivision_types = "subdivision/types"
}
public enum SwiftSovereignStateLocalization {
    public static func get_country_short_name(_ country: Country, language_code: String? = nil) -> String {
        return Bundle.get(language_code: language_code, type: SwiftSovereignStateLocalizationCategory.country_short_names, country.rawValue)
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
