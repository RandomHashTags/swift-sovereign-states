//
//  Country.swift
//  
//
//  Created by Evan Anderson on 6/12/22.
//

import Foundation

public extension Locale.Region {
    static let abkhazia:Locale.Region = Locale.Region("abkhazia")
    static let artsakh:Locale.Region = Locale.Region("artsakh")
    
    static let northernCyprus:Locale.Region = Locale.Region("northernCyprus")
    static let northKorea:Locale.Region = Locale.Region("KP")
    
    static let palestine:Locale.Region = Locale.Region("palestine")
    
    static let scotland:Locale.Region = Locale.Region("scotland")
    static let somaliland:Locale.Region = Locale.Region("somaliland")
    static let sudan:Locale.Region = Locale.Region("SD")
    static let syria:Locale.Region = Locale.Region("SY")
    
    static let transnistria:Locale.Region = Locale.Region("transnistria")
    
    static let allCases:[Locale.Region] = {
        var array:[Locale.Region] = Locale.Region.isoRegions
        array.append(contentsOf: [
            abkhazia, artsakh,
            northernCyprus,

            palestine,
            scotland, somaliland, 
            transnistria
        ])
        #if os(Linux)
        array.append(contentsOf: [
            northKorea,
            sudan, syria,
        ])
        #endif
        return array
    }()
    
    /// - Warning: Case Sensitive!
    static func getAllMentionedISOAlpha2(in string: String, locale: Locale = Locale.current) -> [Locale.Region] {
        let string_start_index:String.Index = string.startIndex
        let string_end_index:String.Index = string.endIndex
        return allCases.filter({ region in
            var values:Set<String> = [region.identifier]
            if let alias:String = region.isoAlpha2Alias {
                values.insert(alias)
            }
            if let parent_group:String = region.isoAlpha2ParentGroup {
                values.insert(parent_group)
            }
            return SovereignRegions.doesSatisfy(string: string, start_index: string_start_index, end_index: string_end_index, values: values)
        })
    }
    
    /// - Warning: Case Sensitive!
    static func getAllMentionedISOAlpha3(in string: String, locale: Locale = Locale.current) -> [Locale.Region] {
        let string_start_index:String.Index = string.startIndex
        let string_end_index:String.Index = string.endIndex
        return allCases.filter({ region in
            guard let iso:String = region.isoAlpha3 else { return false }
            return SovereignRegions.doesSatisfy(string: string, start_index: string_start_index, end_index: string_end_index, values: [iso])
        })
    }
    static func getAllMentioned(in string: String, locale: Locale = Locale.current, options: String.CompareOptions) -> [Locale.Region] {
        let string:String = string.folding(options: options, locale: locale)
        let string_start_index:String.Index = string.startIndex
        let string_end_index:String.Index = string.endIndex
        return allCases.filter({ region in
            let keywords:Set<String> = region.keywords(forLocale: locale).map_set({ $0.folding(options: options, locale: nil) })
            return SovereignRegions.doesSatisfy(string: string, start_index: string_start_index, end_index: string_end_index, values: keywords)
        })
    }
    
    func aliases(forLocale locale: Locale = Locale.current) -> Set<String>? {
        // TODO: support locale
        return SovereignStateAliases.get(self)
    }
    func officialNames(forLocale locale: Locale = Locale.current) -> Set<String>? {
        // TODO: support locale
        return SovereignStateOfficialNames.get(self)
    }
    
    var currency : Locale.Currency {
        return Locale.Currency(identifier)
    }
    /// The official currencies used within this Region.
    var currencies : [Currency] {
        return SovereignStateCurrencies.get(self)
    }
    
    var timeZones : [SovereignStateTimeZone] {
        return SovereignStateTimeZone.get(self)
    }
    
    func name(forLocale locale: Locale = Locale.current) -> String {
        if let string:String = locale.localizedString(forRegionCode: identifier) {
            return string
        } else {
            // TODO: support locale
            let key:String
            switch self {
            case .northernCyprus:
                key = "northern_cyprus"
                break
            case .northKorea:
                key = "north_korea"
                break
            default:
                key = identifier
                break
            }
            let locale_key:String.LocalizationValue = String.LocalizationValue(stringLiteral: key + "_name_short")
            return String(localized: locale_key, table: "Countries", bundle: Bundle.module)
        }
    }
    
    func keywords(forLocale locale: Locale = Locale.current) -> Set<String> {
        let locale_name:String = name(forLocale: locale)
        var keywords:Set<String> = [
            locale_name,
            locale_name.replacingOccurrences(of: "&", with: "and"),
            locale_name.replacingOccurrences(of: " mainland", with: ""),
        ]
        
        let locale_name_diacritic_insensitive:String = locale_name.folding(options: .diacriticInsensitive, locale: locale)
        if !locale_name.elementsEqual(locale_name_diacritic_insensitive) {
            keywords.formUnion([
                locale_name_diacritic_insensitive,
                locale_name_diacritic_insensitive.replacingOccurrences(of: "&", with: "and")
            ])
        }
        let regex:Regex<Substring> = try! Regex<Substring>(" \\([a-zA-Z]+\\)")
        let regex_matches:[Regex<Substring>.Match] = locale_name.matches(of: regex)
        
        if !regex_matches.isEmpty {
            let match:Regex<Substring>.Match = regex_matches[0]
            var regex_keywords:Set<String> = [locale_name.replacing(regex, with: "")]
            if match.range.lowerBound == match.endIndex {
                regex_keywords.insert(String(locale_name[locale_name.index(match.startIndex, offsetBy: 2)..<locale_name.index(before: match.endIndex)]))
            }
            keywords.formUnion(regex_keywords)
        }
        
        if let aliases:Set<String> = aliases(forLocale: locale) {
            keywords.formUnion(aliases)
        }
        if let official_names:Set<String> = officialNames(forLocale: locale) {
            keywords.formUnion(official_names)
        }
        return keywords
    }
    
    func isMentioned(in string: String, options: String.CompareOptions) -> Bool {
        return SovereignRegions.doesSatisfy(string: string, values: keywords(), options: options)
    }
}

public extension Locale.Region {
    var flagURL : String {
        let id:String = identifier.lowercased()
        switch id {
        default:
            return "https://raw.githubusercontent.com/stsrki/country-flags/master/png1000px/" + id + ".png"
        }
    }
    
    var isoAlpha2Alias : String? {
        switch self {
        case .greece: return "EL"
        case .unitedKingdom: return "UK"
        default: return nil
        }
    }
    var isoAlpha2ParentGroup : String? {
        switch self {
        case .austria,
                .belgium,
                .bulgaria,
                .croatia,
                .cyprus,
                .czechia,
                .denmark,
                .estonia,
                .finland,
                .france,
                .germany,
                .greece,
                .hungary,
                .italy,
                .latvia,
                .lithuania,
                .luxembourg,
                .malta,
                .netherlands,
                .poland,
                .portugal,
                .ireland,
                .romania,
                .slovakia,
                .slovenia,
                .spain,
                .sweden,
            
                .guadeloupe,
                .saintMartin:
                return "EU"
            default:
                return nil
        }
    }
    
    /// Whether or not this Region is only recognized by the United Nations as a sovereign state.
    var isUnitedNationsObserverState : Bool {
        switch self {
        case .palestine,
                .vaticanCity:
            return true
        default:
            return false
        }
    }
    /// Whether or not this Region is recognized by the United Nations as a sovereign state member.
    var isUnitedNationsMember : Bool {
        switch self {
        case .abkhazia,
                .americanSamoa,
                .anguilla,
                .artsakh,
                .aruba,
                .bermuda,
                .britishVirginIslands,
                .caymanIslands,
                .cookIslands,
                .curaçao,
                .falklandIslands,
                .faroeIslands,
                .frenchPolynesia,
                .gibraltar,
                .greenland,
                .guadeloupe,
                .guam,
                .guernsey,
                .hongKong,
                .isleOfMan,
                .jersey,
                .kosovo,
                .macao,
                .montserrat,
                .newCaledonia,
                .niue,
                .norfolkIsland,
                .northernCyprus,
                .northernMarianaIslands,
                .palestine,
                .puertoRico,
                .saintBarthélemy,
                .saintHelena,
                .saintMartin,
                .saintPierreMiquelon,
                .scotland,
                .somalia,
                .taiwan,
                .tokelau,
                .transnistria,
                .turksCaicosIslands,
                .unitedStatesVirginIslands,
                .vaticanCity,
                .wallisFutuna,
                .westernSahara
            :
            return false
        default:
            return true
        }
    }
    /// Whether or not this Region is a member of NATO. (https://en.wikipedia.org/wiki/NATO | https://en.wikipedia.org/wiki/Member_states_of_NATO)
    var isNATOMember : Bool {
        switch self {
        case .albania,
                .belgium,
                .bulgaria,
                .canada,
                .croatia,
                .czechia,
                .denmark,
                .estonia,
                .finland,
                .france,
                .germany,
                .greece,
                .hungary,
                .iceland,
                .italy,
                .latvia,
                .lithuania,
                .luxembourg,
                .montenegro,
                .netherlands,
                .northMacedonia,
                .norway,
                .poland,
                .portugal,
                .romania,
                .slovakia,
                .slovenia,
                .spain,
                .turkey,
                .unitedKingdom,
                .unitedStates
            :
            return true
        default:
            return false
        }
    }
    /// Whether or not this Region is part of the European Union. (https://en.wikipedia.org/wiki/European_Union | https://en.wikipedia.org/wiki/Member_state_of_the_European_Union)
    var isEuropeanUnionMember : Bool {
        switch self {
        case .austria,
                .belgium,
                .bulgaria,
                .croatia,
                .cyprus,
                .czechia,
                .denmark,
                .estonia,
                .finland,
                .france,
                .germany,
                .greece,
                .hungary,
                .ireland,
                .italy,
                .latvia,
                .lithuania,
                .luxembourg,
                .malta,
                .netherlands,
                .poland,
                .portugal,
                .romania,
                .slovakia,
                .slovenia,
                .spain,
                .sweden
            :
            return true
        default:
            return false
        }
    }
    
    var unStatus : String? {
        switch self {
        case .abkhazia,
                .artsakh,
                .northernCyprus,
                .somaliland,
                .transnistria
            :
            return "NO MEMBERSHIP"
        case .kosovo:
            return "UN SPECIAL AGENCY MEMBER"
        case .palestine,
                .vaticanCity
            :
            return "UN OBSERVER STATE"
        case .taiwan:
            return "FORMER UN MEMBER STATE"
        case .cookIslands,
                .marshallIslands,
                .micronesia,
                .niue,
                .palau
                :
            return "UN ASSOCIATED STATE"
        case .americanSamoa,
                .aruba,
                .caymanIslands,
                .curaçao,
                .falklandIslands,
                .faroeIslands,
                .frenchPolynesia,
                .gibraltar,
                .greenland,
                .guam,
                .guadeloupe,
                .guernsey,
                .isleOfMan,
                .jersey,
                .montserrat,
                .newCaledonia,
                .northernMarianaIslands,
                .puertoRico,
                .saintBarthélemy,
                .saintHelena,
                .saintMartin,
                .saintPierreMiquelon,
                .tokelau,
                .turksCaicosIslands,
                .unitedStatesVirginIslands,
                .wallisFutuna
            :
            return "TERRITORY BELONGS TO A UN MEMBER"
        default:
            return nil // is UN member state
        }
    }
    var sovereigntyDispute : String? {
        switch self {
        case .abkhazia: return "Claimed by Georgia; recognized by 8 territories"
        case .armenia: return "Not recognised by Pakistan"
        case .artsakh: return "Claimed by Azerbaijan; recognized by 3 territories (Abkhazia, South Ossetia, and Transnistria)"
        case .chinaMainland: return "Partially unrecognised. Claimed by the Republic of China (Taiwan)"
        case .cyprus: return "Not recognised by Turkey"
        case .israel: return "Unrecognised as a state by 28 UN member states"
        case .kosovo: return "Claimed by Serbia; recognised by 112 UN member states"
        case .northKorea: return "Claimed by South Korea; unrecognised by 3 UN members (France, Japan, and South Korea)"
        case .northernCyprus: return "Claimed by Cyprus; recognised only by Turkey"
        case .palestine: return "Unrecognised as a state by Israel; recognised by 138 UN member states"
        case .somaliland: return "Claimed by Somalia; not recognised by any state or territory"
        case .southKorea: return "Claimed by North Korea"
        case .taiwan: return "Claimed by the People's Republic of China (China)"
        case .transnistria: return "Claimed by Moldova; recognised only by Abkhazia, Artsakh, and South Ossetia"
        default: return nil
        }
    }
}
