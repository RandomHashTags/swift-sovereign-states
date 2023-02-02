//
//  SwiftSovereignStatesLocalization.swift
//  
//
//  Created by Evan Anderson on 2/2/23.
//

import Foundation

private extension Bundle {
    static func get_localization(type: SwiftSovereignStateLocalizationCategory, identifier: String) -> Bundle? {
        guard let localization_bundle:Bundle = Bundle(identifier: identifier) ?? Bundle(path: identifier),
              let path:String = localization_bundle.path(forResource: String(Locale.current.identifier.prefix(2)) + "_" + type.rawValue, ofType: "lproj"),
              let bundle:Bundle = Bundle(path: path)
        else {
            return nil
        }
        return bundle
    }
    static func get(type: SwiftSovereignStateLocalizationCategory,_ key: String) -> String {
        return (Bundle.get_localization(type: type, identifier: "org.cocoapods.SwiftSovereignStates")
                ?? Bundle.get_localization(type: type, identifier: Bundle(for: SwiftSovereignStates.self).bundleIdentifier!)
                ?? Bundle.get_localization(type: type, identifier: "/Users/randomhashtags/GitProjects/swift-sovereign-states/Sources/SwiftSovereignStates"))?.localizedString(forKey: key, value: "nil", table: nil) ?? "nil"
    }
}
private enum SwiftSovereignStateLocalizationCategory : String {
    case country_short_names
    case currencies
}
public enum SwiftSovereignStateLocalization {
    public static func get_country_short_name(_ country: Country) -> String {
        return Bundle.get(type: SwiftSovereignStateLocalizationCategory.country_short_names, country.rawValue)
    }
    public static func get_currency_name(_ currency: Currency) -> String {
        return Bundle.get(type: SwiftSovereignStateLocalizationCategory.currencies, currency.rawValue + "_name")
    }
}
