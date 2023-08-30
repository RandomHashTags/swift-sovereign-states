//
//  SovereignRegion.swift
//  
//
//  Created by Evan Anderson on 9/22/22.
//

import Foundation

public extension Locale.Region {
    static var abkhazia:Locale.Region = Locale.Region("abkhazia")
    static var artsakh:Locale.Region = Locale.Region("artsakh")
    
    static var northernCyprus:Locale.Region = Locale.Region("northernCyprus")
    static var northKorea:Locale.Region = Locale.Region("northKorea")
    
    static var palestine:Locale.Region = Locale.Region("palestine")
    
    static var scotland:Locale.Region = Locale.Region("scotland")
    static var somaliland:Locale.Region = Locale.Region("somaliland")
    static var sudan:Locale.Region = Locale.Region("sudan")
    static var syria:Locale.Region = Locale.Region("syria")
    
    static var transnistria:Locale.Region = Locale.Region("transnistria")
    
    static var allCases : [Locale.Region] = {
        return [
            Locale.Region.abkhazia,
            Locale.Region.artsakh,
            Locale.Region.northernCyprus,
            Locale.Region.northKorea,
            Locale.Region.palestine,
            Locale.Region.scotland,
            Locale.Region.somaliland,
            Locale.Region.sudan,
            Locale.Region.syria,
            Locale.Region.transnistria,
            Locale.Region.westernSahara,
            
            
            Locale.Region.afghanistan,
            Locale.Region.ålandIslands,
            Locale.Region.albania,
            Locale.Region.algeria,
            Locale.Region.americanSamoa,
            Locale.Region.andorra,
            Locale.Region.angola,
            Locale.Region.anguilla,
            Locale.Region.antarctica,
            Locale.Region.antiguaBarbuda,
            Locale.Region.argentina,
            Locale.Region.armenia,
            Locale.Region.aruba,
            Locale.Region.ascensionIsland,
            Locale.Region.australia,
            Locale.Region.austria,
            Locale.Region.azerbaijan,
            
            Locale.Region.bahamas,
            Locale.Region.bahrain,
            Locale.Region.bangladesh,
            Locale.Region.barbados,
            Locale.Region.belarus,
            Locale.Region.belgium,
            Locale.Region.belize,
            Locale.Region.benin,
            Locale.Region.bermuda,
            Locale.Region.bhutan,
            Locale.Region.bolivia,
            Locale.Region.bosniaHerzegovina,
            Locale.Region.botswana,
            Locale.Region.bouvetIsland,
            Locale.Region.brazil,
            Locale.Region.britishVirginIslands,
            Locale.Region.brunei,
            Locale.Region.bulgaria,
            Locale.Region.burkinaFaso,
            Locale.Region.burundi,
            
            Locale.Region.cambodia,
            Locale.Region.cameroon,
            Locale.Region.canada,
            Locale.Region.canaryIslands,
            Locale.Region.capeVerde,
            Locale.Region.caribbeanNetherlands,
            Locale.Region.caymanIslands,
            Locale.Region.centralAfricanRepublic,
            Locale.Region.ceutaMelilla,
            Locale.Region.chad,
            Locale.Region.chagosArchipelago,
            Locale.Region.chile,
            Locale.Region.chinaMainland,
            Locale.Region.christmasIsland,
            Locale.Region.clippertonIsland,
            Locale.Region.cocosIslands,
            Locale.Region.colombia,
            Locale.Region.comoros,
            Locale.Region.congoBrazzaville,
            Locale.Region.congoKinshasa,
            Locale.Region.cookIslands,
            Locale.Region.costaRica,
            Locale.Region.côteDIvoire,
            Locale.Region.croatia,
            Locale.Region.cuba,
            Locale.Region.curaçao,
            Locale.Region.cyprus,
            Locale.Region.czechia,
            
            Locale.Region.denmark,
            Locale.Region.diegoGarcia,
            Locale.Region.djibouti,
            Locale.Region.dominica,
            Locale.Region.dominicanRepublic,
            
            Locale.Region.ecuador,
            Locale.Region.egypt,
            Locale.Region.elSalvador,
            Locale.Region.equatorialGuinea,
            Locale.Region.eritrea,
            Locale.Region.estonia,
            Locale.Region.eswatini,
            Locale.Region.ethiopia,
            
            Locale.Region.falklandIslands,
            Locale.Region.faroeIslands,
            Locale.Region.fiji,
            Locale.Region.finland,
            Locale.Region.france,
            Locale.Region.frenchGuiana,
            Locale.Region.frenchPolynesia,
            Locale.Region.frenchSouthernTerritories,
            
            Locale.Region.gabon,
            Locale.Region.gambia,
            Locale.Region.georgia,
            Locale.Region.germany,
            Locale.Region.ghana,
            Locale.Region.gibraltar,
            Locale.Region.greece,
            Locale.Region.greenland,
            Locale.Region.grenada,
            Locale.Region.guadeloupe,
            Locale.Region.guam,
            Locale.Region.guatemala,
            Locale.Region.guernsey,
            Locale.Region.guinea,
            Locale.Region.guineaBissau,
            Locale.Region.guyana,
            
            Locale.Region.haiti,
            Locale.Region.heardMcdonaldIslands,
            Locale.Region.honduras,
            Locale.Region.hongKong,
            Locale.Region.hungary,
            
            Locale.Region.iceland,
            Locale.Region.india,
            Locale.Region.indonesia,
            Locale.Region.iran,
            Locale.Region.iraq,
            Locale.Region.ireland,
            Locale.Region.isleOfMan,
            Locale.Region.israel,
            Locale.Region.italy,
            
            Locale.Region.jamaica,
            Locale.Region.japan,
            Locale.Region.jersey,
            Locale.Region.jordan,
            
            Locale.Region.kazakhstan,
            Locale.Region.kenya,
            Locale.Region.kiribati,
            Locale.Region.kosovo,
            Locale.Region.kuwait,
            Locale.Region.kyrgyzstan,
            
            Locale.Region.laos,
            Locale.Region.latvia,
            Locale.Region.lebanon,
            Locale.Region.lesotho,
            Locale.Region.liberia,
            Locale.Region.libya,
            Locale.Region.liechtenstein,
            Locale.Region.lithuania,
            Locale.Region.luxembourg,
            
            Locale.Region.macao,
            Locale.Region.madagascar,
            Locale.Region.malawi,
            Locale.Region.malaysia,
            Locale.Region.maldives,
            Locale.Region.mali,
            Locale.Region.malta,
            Locale.Region.marshallIslands,
            Locale.Region.martinique,
            Locale.Region.mauritania,
            Locale.Region.mauritius,
            Locale.Region.mayotte,
            Locale.Region.mexico,
            Locale.Region.micronesia,
            Locale.Region.moldova,
            Locale.Region.monaco,
            Locale.Region.mongolia,
            Locale.Region.montenegro,
            Locale.Region.montserrat,
            Locale.Region.morocco,
            Locale.Region.mozambique,
            Locale.Region.myanmar,
            
            Locale.Region.namibia,
            Locale.Region.nauru,
            Locale.Region.nepal,
            Locale.Region.netherlands,
            Locale.Region.newCaledonia,
            Locale.Region.newZealand,
            Locale.Region.nicaragua,
            Locale.Region.niger,
            Locale.Region.nigeria,
            Locale.Region.niue,
            Locale.Region.norfolkIsland,
            Locale.Region.northernMarianaIslands,
            Locale.Region.northMacedonia,
            Locale.Region.norway,
            
            Locale.Region.oman,
            
            Locale.Region.pakistan,
            Locale.Region.palau,
            Locale.Region.palestinianTerritories,
            Locale.Region.panama,
            Locale.Region.papuaNewGuinea,
            Locale.Region.paraguay,
            Locale.Region.peru,
            Locale.Region.philippines,
            Locale.Region.pitcairnIslands,
            Locale.Region.poland,
            Locale.Region.portugal,
            Locale.Region.puertoRico,
            
            Locale.Region.qatar,
            
            Locale.Region.réunion,
            Locale.Region.romania,
            Locale.Region.russia,
            Locale.Region.rwanda,
            
            Locale.Region.saintBarthélemy,
            Locale.Region.saintHelena,
            Locale.Region.saintKittsNevis,
            Locale.Region.saintLucia,
            Locale.Region.saintMartin,
            Locale.Region.saintPierreMiquelon,
            Locale.Region.saintVincentGrenadines,
            Locale.Region.samoa,
            Locale.Region.sanMarino,
            Locale.Region.sãoToméPríncipe,
            Locale.Region.saudiArabia,
            Locale.Region.senegal,
            Locale.Region.serbia,
            Locale.Region.seychelles,
            Locale.Region.sierraLeone,
            Locale.Region.singapore,
            Locale.Region.sintMaarten,
            Locale.Region.slovakia,
            Locale.Region.slovenia,
            Locale.Region.solomonIslands,
            Locale.Region.somalia,
            Locale.Region.southAfrica,
            Locale.Region.southGeorgiaSouthSandwichIslands,
            Locale.Region.southKorea,
            Locale.Region.southSudan,
            Locale.Region.spain,
            Locale.Region.sriLanka,
            Locale.Region.suriname,
            Locale.Region.svalbardJanMayen,
            Locale.Region.sweden,
            Locale.Region.switzerland,
            
            Locale.Region.taiwan,
            Locale.Region.tajikistan,
            Locale.Region.tanzania,
            Locale.Region.thailand,
            Locale.Region.timorLeste,
            Locale.Region.togo,
            Locale.Region.tokelau,
            Locale.Region.tonga,
            Locale.Region.trinidadTobago,
            Locale.Region.tristanDaCunha,
            Locale.Region.tunisia,
            Locale.Region.turkey,
            Locale.Region.turkmenistan,
            Locale.Region.turksCaicosIslands,
            Locale.Region.tuvalu,
            
            Locale.Region.uganda,
            Locale.Region.ukraine,
            Locale.Region.unitedArabEmirates,
            Locale.Region.unitedKingdom,
            Locale.Region.unitedStates,
            
            Locale.Region.unitedStatesOutlyingIslands,
            Locale.Region.unitedStatesVirginIslands,
            Locale.Region.uruguay,
            Locale.Region.uzbekistan,
            
            Locale.Region.vanuatu,
            Locale.Region.vaticanCity,
            Locale.Region.venezuela,
            Locale.Region.vietnam,
            
            Locale.Region.wallisFutuna,
            Locale.Region.westernSahara,
            
            Locale.Region.yemen,
            
            Locale.Region.zambia,
            Locale.Region.zimbabwe,
        ]
    }()
    
    static func get_all_mentioned(in string: String, locale: Locale = Locale.current) -> [Locale.Region] {
        let string_lowercased:String = string.lowercased()
        let string_start_index:String.Index = string.startIndex
        let string_end_index:String.Index = string.endIndex
        return allCases.filter({ region in
            let keywords:Set<String> = region.keywords(forLocale: locale)
            return SovereignRegions.doesSatisfy2(string_start_index: string_start_index, string_end_index: string_end_index, string_lowercased: string_lowercased, values: keywords)
        })
    }
    
    /// The unicode flag for this Region.
    var flagEmoji : String? {
        return SovereignStateFlagEmoji.get(self)
    }
    var neighbors : [Locale.Region]? {
        return SovereignStateNeighbors.get(self)
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
    
    func name(forLocale locale: Locale = Locale.current) -> String {
        if let string:String = locale.localizedString(forRegionCode: identifier) {
            return string
        } else {
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
        let id:String = identifier
        if let keywords:Set<String> = SwiftSovereignStateCacheSubdivisions.keywords2[id] {
            return keywords
        }
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
        /*
         if let additional:Set<String> = additional_keywords {
         keywords.formUnion(additional)
         }*/
        keywords = keywords.map_set({ $0.lowercased() })
        SwiftSovereignStateCacheSubdivisions.keywords2[id] = keywords
        return keywords
    }
    
    func isMentioned(in string: String) -> Bool {
        let keywords:Set<String> = keywords()
        return SovereignRegions.doesSatisfy2(string_start_index: string.startIndex, string_end_index: string.endIndex, string_lowercased: string.lowercased(), values: keywords)
    }
    /*func is_mentioned(in string: String) -> Bool {
        let keywords:Set<String> = keywords()
        return SovereignRegions.doesSatisfy2(string_lowercased: string, values: keywords)
    }
    func is_mentioned_exactly(in string: String, ignoreCase: Bool) -> Bool {
        let keywords:Set<String> = keywords()
        return SovereignRegions.doesEqual(string: string, values: keywords, option: ignoreCase ? .caseInsensitive : .literal)
    }*/
}
extension Set {
    func map_set<T>(_ transform: @escaping (Element) throws -> T) rethrows -> Set<T> {
        var set:Set<T> = Set<T>.init(minimumCapacity: count)
        for element in self {
            set.insert(try transform(element))
        }
        return set
    }
}

public extension Locale.Region {
    var flagURL : String {
        return "https://raw.githubusercontent.com/stsrki/country-flags/master/png1000px/" + identifier.lowercased() + ".png"
    }
    
    var isoAlpha3 : String? {
        return SovereignStateISOAlpha3.get(self)
    }
    
    func wikipediaURL(forLocale locale: Locale) -> String {
        let language:String = locale.language.minimalIdentifier
        let name:String
        switch self {
        case .georgia:
            name = "Georgia_(country)"
            break
        case .micronesia:
            name = "Federated_States_of_Micronesia"
            break
        case .saintHelena:
            name = "Saint_Helena"
            break
        case .saintMartin:
            name = "Saint_Martin_(island)"
            break
        default:
            name = self.name(forLocale: locale).replacingOccurrences(of: " ", with: "_")
            break
        }
        return "https://" + language + ".wikipedia.org/wiki/" + name
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
    /// Whether or not this Country is a member of NATO. (https://en.wikipedia.org/wiki/NATO | https://en.wikipedia.org/wiki/Member_states_of_NATO)
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
}

public extension Locale.Region {
    /// The level-1 administrative units this Region claims territorial ownership of.
    var subdivisions : [any SovereignStateSubdivision]? {
        return subdivisionType?.allCases as? [any SovereignStateSubdivision]
    }
    var subdivisionType : (any SovereignStateSubdivision.Type)? {
        switch self {
        case .afghanistan: return SubdivisionsAfghanistan.self
        case .albania: return SubdivisionsAlbania.self
        case .algeria: return SubdivisionsAlgeria.self
        case .andorra: return SubdivisionsAndorra.self
        case .angola: return SubdivisionsAngola.self
        case .anguilla: return nil
        case .antiguaBarbuda: return SubdivisionsAntiguaAndBarbuda.self
        case .argentina: return SubdivisionsArgentina.self
        case .armenia: return SubdivisionsArmenia.self
        case .aruba: return nil
        case .australia: return SubdivisionsAustralia.self
        case .austria: return SubdivisionsAustria.self
        case .azerbaijan: return SubdivisionsAzerbaijan.self
        
        case .bahamas: return SubdivisionsBahamas.self
        case .bahrain: return SubdivisionsBahrain.self
        case .bangladesh: return SubdivisionsBangladesh.self
        case .barbados: return SubdivisionsBarbados.self
        case .belarus: return SubdivisionsBelarus.self
        case .belize: return SubdivisionsBelize.self
        case .benin: return SubdivisionsBenin.self
        case .bermuda: return SubdivisionsBermuda.self
        case .bhutan: return SubdivisionsBhutan.self
        case .bolivia: return SubdivisionsBolivia.self
        case .bosniaHerzegovina: return nil
        case .botswana: return SubdivisionsBotswana.self
        case .brazil: return SubdivisionsBrazil.self
        case .brunei: return nil
        case .bulgaria: return SubdivisionsBulgaria.self
        case .burkinaFaso: return SubdivisionsBurkinaFaso.self
        case .burundi: return SubdivisionsBurundi.self
        
        case .cambodia: return SubdivisionsCambodia.self
        case .cameroon: return SubdivisionsCameroon.self
        case .canada: return SubdivisionsCanada.self
        case .capeVerde: return nil
        case .centralAfricanRepublic: return SubdivisionsCentralAfricanRepublic.self
        case .chad: return SubdivisionsChad.self
        case .chile: return SubdivisionsChile.self
        case .chinaMainland: return nil
        case .colombia: return nil
        case .comoros: return SubdivisionsComoros.self
        case .congoBrazzaville: return nil
        case .costaRica: return SubdivisionsCostaRica.self
        case .croatia: return nil
        case .cuba: return SubdivisionsCuba.self
        case .cyprus: return nil
        case .czechia: return SubdivisionsCzechRepublic.self
        
        case .congoKinshasa: return nil
        case .denmark: return SubdivisionsDenmark.self
        case .djibouti: return SubdivisionsDjibouti.self
        case .dominica: return SubdivisionsDominica.self
        case .dominicanRepublic: return SubdivisionsDominicanRepublic.self
            
        case .ecuador: return SubdivisionsEcuador.self
        case .egypt: return SubdivisionsEgypt.self
        case .elSalvador: return SubdivisionsElSalvador.self
        case .equatorialGuinea: return nil
        case .eritrea: return SubdivisionsEritrea.self
        case .estonia: return SubdivisionsEstonia.self
        case .eswatini: return nil
        case .ethiopia: return SubdivisionsEthiopia.self
        
        case .fiji: return SubdivisionsFiji.self
        case .finland: return SubdivisionsFinland.self
        case .france: return SubdivisionsFrance.self
            
        case .gabon: return nil
        case .gambia: return nil
        case .georgia: return nil
        case .germany: return SubdivisionsGermany.self
        case .ghana: return nil
        case .greece: return SubdivisionsGreece.self
        case .greenland: return SubdivisionsGreenland.self
        case .grenada: return SubdivisionsGrenada.self
        case .guam: return nil
        case .guadeloupe: return SubdivisionsGuadeloupe.self
        case .guatemala: return SubdivisionsGuatemala.self
        case .guinea: return SubdivisionsGuinea.self
        case .guineaBissau: return nil
        case .guyana: return nil
            
        case .haiti: return SubdivisionsHaiti.self
        case .honduras: return SubdivisionsHonduras.self
        case .hungary: return SubdivisionsHungary.self
        
        case .iceland: return SubdivisionsIceland.self
        case .india: return SubdivisionsIndia.self
        case .indonesia: return SubdivisionsIndonesia.self
        case .iraq: return SubdivisionsIraq.self
        case .iran: return SubdivisionsIran.self
        case .ireland: return SubdivisionsIreland.self
        case .israel: return SubdivisionsIsrael.self
        case .italy: return SubdivisionsItaly.self
        case .côteDIvoire: return SubdivisionsIvoryCoast.self
        
        case .jamaica: return SubdivisionsJamaica.self
        case .japan: return SubdivisionsJapan.self
        case .jersey: return SubdivisionsJersey.self
        case .jordan: return SubdivisionsJordan.self
        
        case .kazakhstan: return SubdivisionsKazakhstan.self
        case .kenya: return SubdivisionsKenya.self
        case .kiribati: return nil
        case .kuwait: return SubdivisionsKuwait.self
        case .kyrgyzstan: return SubdivisionsKyrgyzstan.self
        
        case .laos: return SubdivisionsLaos.self
        case .latvia: return SubdivisionsLatvia.self
        case .lebanon: return SubdivisionsLebanon.self
        case .lesotho: return SubdivisionsLesotho.self
        case .liberia: return SubdivisionsLiberia.self
        case .libya: return SubdivisionsLibya.self
        case .liechtenstein: return SubdivisionsLiechtenstein.self
        case .lithuania: return SubdivisionsLithuania.self
        case .luxembourg: return SubdivisionsLuxembourg.self
        
        case .madagascar: return SubdivisionsMadagascar.self
        case .malawi: return nil
        case .malaysia: return SubdivisionsMalaysia.self
        case .maldives: return SubdivisionsMaldives.self
        case .mali: return SubdivisionsMali.self
        case .malta: return SubdivisionsMalta.self
        case .marshallIslands: return SubdivisionsMarshallIslands.self
        case .mauritania: return SubdivisionsMauritania.self
        case .mauritius: return SubdivisionsMauritius.self
        case .mexico: return SubdivisionsMexico.self
        case .micronesia: return SubdivisionsMicronesia.self
        case .moldova: return SubdivisionsMoldova.self
        case .monaco: return nil
        case .mongolia: return SubdivisionsMongolia.self
        case .montenegro: return SubdivisionsMontenegro.self
        case .morocco: return SubdivisionsMorocco.self
        case .mozambique: return SubdivisionsMozambique.self
        case .myanmar: return nil
        
        case .namibia: return SubdivisionsNamibia.self
        case .nauru: return SubdivisionsNauru.self
        case .nepal: return SubdivisionsNepal.self
        case .netherlands: return SubdivisionsNetherlands.self
        case .newZealand: return SubdivisionsNewZealand.self
        case .nicaragua: return SubdivisionsNicaragua.self
        case .niger: return SubdivisionsNiger.self
        case .nigeria: return SubdivisionsNigeria.self
        case .northKorea: return nil
        case .northMacedonia: return nil
        case .norway: return SubdivisionsNorway.self
            
        case .oman: return SubdivisionsOman.self
            
        case .pakistan: return SubdivisionsPakistan.self
        case .palau: return SubdivisionsPalau.self
        case .palestine: return SubdivisionsPalestine.self
        case .panama: return SubdivisionsPanama.self
        case .papuaNewGuinea: return SubdivisionsPapuaNewGuinea.self
        case .paraguay: return SubdivisionsParaguay.self
        case .peru: return SubdivisionsPeru.self
        case .philippines: return SubdivisionsPhilippines.self
        case .poland: return SubdivisionsPoland.self
        case .portugal: return SubdivisionsPortugal.self
        
        case .qatar: return SubdivisionsQatar.self
        
        case .romania: return SubdivisionsRomania.self
        case .russia: return nil
        case .rwanda: return SubdivisionsRwanda.self
        
        case .saintKittsNevis: return nil
        case .saintLucia: return nil
        case .saintVincentGrenadines: return nil
        case .samoa: return SubdivisionsSamoa.self
        case .sãoToméPríncipe: return SubdivisionsSaoTomeAndPrincipe.self
        case .saudiArabia: return nil
        case .senegal: return SubdivisionsSenegal.self
        case .serbia: return nil
        case .seychelles: return nil
        case .sierraLeone: return nil
        case .singapore: return nil
        case .slovakia: return SubdivisionsSlovakia.self
        case .slovenia: return SubdivisionsSlovenia.self
        case .solomonIslands: return nil
        case .somalia: return SubdivisionsSomalia.self
        case .southAfrica: return SubdivisionsSouthAfrica.self
        case .southKorea: return SubdivisionsSouthKorea.self
        case .southSudan: return SubdivisionsSouthSudan.self
        case .spain: return SubdivisionsSpain.self
        case .sriLanka: return SubdivisionsSriLanka.self
        case .sudan: return nil
        case .suriname: return SubdivisionsSuriname.self
        case .sweden: return SubdivisionsSweden.self
        case .switzerland: return SubdivisionsSwitzerland.self
        case .syria: return SubdivisionsSyria.self
        
        case .tajikistan: return nil
        case .tanzania: return SubdivisionsTanzania.self
        case .thailand: return SubdivisionsThailand.self
        case .timorLeste: return SubdivisionsTimorLeste.self
        case .togo: return SubdivisionsTogo.self
        case .tonga: return SubdivisionsTonga.self
        case .trinidadTobago: return nil
        case .tunisia: return SubdivisionsTunisia.self
        case .turkey: return SubdivisionsTurkey.self
        case .turkmenistan: return SubdivisionsTurkmenistan.self
        case .tuvalu: return nil
        
        case .uganda: return SubdivisionsUganda.self
        case .ukraine: return SubdivisionsUkraine.self
        case .unitedArabEmirates: return nil
        case .unitedKingdom: return nil
        case .unitedStates: return SubdivisionsUnitedStates.self
        case .uruguay: return SubdivisionsUruguay.self
        case .uzbekistan: return SubdivisionsUzbekistan.self
        
        case .vanuatu: return SubdivisionsVanuatu.self
        case .vaticanCity: return nil
        case .venezuela: return SubdivisionsVenezuela.self
        case .vietnam: return SubdivisionsVietnam.self
        
        case .yemen: return SubdivisionsYemen.self
        
        case .zambia: return SubdivisionsZambia.self
        case .zimbabwe: return SubdivisionsZimbabwe.self
        default: return nil
        }
    }
}

public protocol SovereignRegion : Codable, Hashable, CaseIterable, LosslessStringConvertible, RawRepresentable where RawValue == String { // https://en.wikipedia.org/wiki/Category:Administrative_divisions_by_level_and_country
    /// The unique identifier of this SovereignRegion used for caching.
    var cache_id : String { get }
    /// Cached strings this SovereignRegion is commonly recognized by.
    var keywords : Set<String> { get }
    /// Additional keywords this SovereignRegion should be recognized by.
    var additional_keywords : Set<String>? { get }
    /// Whether this SovereignRegion is mentioned or not in the `string`.
    func isMentioned(in string: String, exact: Bool, ignoreCase: Bool) -> Bool
    
    /// The common short name of this SovereignRegion.
    var name : String { get }
    
    /// The slug Wikipedia has for this SovereignRegion as it would appear in the url, but the underscores are spaces.
    var wikipedia_name : String? { get }
    /// The official names this SovereignRegion legally identifies as.
    var official_names : Set<String>? { get }
    /// The names of this SovereignRegion is also known by.
    var aliases : Set<String>? { get }
    
    /// This SovereignRegion's official government website URL.
    var government_website : String? { get }
    
    /// URL that represents this SovereignRegion's official flag.
    var flag_url : String? { get }
    /// This SovereignRegion's Wikipedia flag url suffix that identifies where it is located on their servers.
    var wikipedia_flag_url_svg_id : String? { get }
    var wikipedia_url : String { get }
    var wikipedia_url_prefix : String? { get }
    var wikipedia_url_suffix : String? { get }
    
    /// The official currencies used within this SovereignRegion.
    var currencies : [Currency] { get }
    /// All the time zones this SovereignRegion recognizes within its administrative borders.
    var time_zones : [SovereignStateTimeZone]? { get }
    /// All temperate zones this SovereignRegion contains within its administrative borders.
    var temperate_zones : [TemperateZone]? { get }
}

public extension SovereignRegion {
    var description: String { return cache_id }
    
    func encode(to encoder: Encoder) throws {
        var container:SingleValueEncodingContainer = encoder.singleValueContainer()
        try container.encode(cache_id)
    }
    
    /// Compares whether this SovereignRegion is equal to another SovereignRegion based on ``cache_id``.
    func isEqual(_ region: (any SovereignRegion)?) -> Bool {
        guard let region:any SovereignRegion = region else { return false }
        return cache_id.elementsEqual(region.cache_id)
    }
    
    var keywords : Set<String> {
        let id:String = cache_id
        if let keywords:Set<String> = SwiftSovereignStateCacheSubdivisions.keywords[id] {
            return keywords
        }
        var keywords:Set<String> = [name]
        if let wikipedia_name:String = wikipedia_name {
            keywords.insert(wikipedia_name)
        }
        if let official_names:Set<String> = official_names {
            keywords.formUnion(official_names)
        }
        if let aliases:Set<String> = aliases {
            keywords.formUnion(aliases)
        }
        if let additional:Set<String> = additional_keywords {
            keywords.formUnion(additional)
        }
        SwiftSovereignStateCacheSubdivisions.keywords[id] = keywords
        return keywords
    }
    var additional_keywords : Set<String>? {
        return nil
    }
    
    func isMentioned(in string: String, exact: Bool, ignoreCase: Bool) -> Bool {
        return exact ? SovereignRegions.doesEqual(string: string, values: keywords, option: ignoreCase ? .caseInsensitive : .literal) : SovereignRegions.doesSatisfy(string: string, values: keywords)
    }
    func is_mentioned(in string: String) -> Bool {
        return SovereignRegions.doesSatisfy(string: string, values: keywords)
    }
    func is_mentioned_exactly(in string: String, ignoreCase: Bool) -> Bool {
        return SovereignRegions.doesEqual(string: string, values: keywords, option: ignoreCase ? .caseInsensitive : .literal)
    }
    
    var official_names : Set<String>? {
        return nil
    }
    
    var aliases : Set<String>? {
        return nil
    }
    
    var wikipedia_name : String? {
        return nil
    }
    
    var government_website : String? {
        return nil
    }
    
    var flag_url : String? {
        guard let id:String = wikipedia_flag_url_svg_id else { return nil }
        let idLowercase:String = id.lowercased()
        let values:[String] = id.components(separatedBy: "/"), lastValue:String = SovereignRegions.urlEncoded(values[values.count-1])
        let type:String, offset:Int
        if id.starts(with: "en") {
            type = "en"
            offset = 1
        } else {
            type = "commons"
            offset = 0
        }
        if idLowercase.hasSuffix(".png") || idLowercase.hasSuffix(".jpg") || idLowercase.hasSuffix(".gif") {
            return "https://upload.wikimedia.org/wikipedia/" + type + "/thumb/" + values[offset] + "/" + values[offset + 1] + "/" + lastValue + "/%quality%px-" + lastValue
        } else {
            return "https://upload.wikimedia.org/wikipedia/" + type + "/thumb/" + values[offset] + "/" + values[offset + 1] + "/" + lastValue + ".svg/%quality%px-" + lastValue + ".svg.png"
        }
    }
    
    var wikipedia_flag_url_svg_id : String? {
        return nil
    }
    
    var wikipedia_url : String {
        let name:String = (wikipedia_name ?? name).replacingOccurrences(of: " ", with: "_")
        return "https://en.wikipedia.org/wiki/" + (wikipedia_url_prefix ?? "") + SovereignRegions.urlEncoded(name) + (wikipedia_url_suffix ?? "")
    }
    var wikipedia_url_prefix : String? {
        return nil
    }
    var wikipedia_url_suffix : String? {
        return nil
    }
    
    var time_zones : [SovereignStateTimeZone]? {
        return nil
    }
    
    /// The formatted time of the first SovereignRegion's time zone, with a custom date and time style.
    func getTime(for date: Date = Date(), timeStyle: DateFormatter.Style, dateStyle: DateFormatter.Style, showAbbreviation: Bool) -> String? {
        guard let timezone:TimeZone = time_zones?.first?.getTimeZone() else { return nil }
        return SovereignRegions.formatTime(date: date, timeZone: timezone, timeStyle: timeStyle, dateStyle: dateStyle, showAbbreviation: showAbbreviation)
    }
    /// All formatted times of the SovereignRegion's time zones, with custom date and time styles.
    func getTimes(for date: Date = Date(), timeStyle: DateFormatter.Style, dateStyle: DateFormatter.Style, showAbbreviation: Bool) -> [String]? {
        guard let timezones:[TimeZone] = time_zones?.compactMap({ $0.getTimeZone() }) else { return nil }
        return timezones.map({ SovereignRegions.formatTime(date: date, timeZone: $0, timeStyle: timeStyle, dateStyle: dateStyle, showAbbreviation: showAbbreviation) })
    }
    
    var temperate_zones : [TemperateZone]? {
        return nil
    }
    /// The season this SovereignRegion is experiencing at a specific month and day.
    func getSeason(type: WeatherSeasonType = .astronomical, month: Int, day: Int) -> WeatherSeason? {
        return temperate_zones?.first?.getSeason(type: type, month: month, day: day)
    }
}

internal extension Sequence {
    func filterAsync(_ transform: @escaping (Element) -> Bool) async -> [Element] {
        var values:[Element] = [Element]()
        await withTaskGroup(of: Element?.self, body: { group in
            for element in self {
                group.addTask {
                    return transform(element) ? element : nil
                }
            }
            for await value in group {
                if let value:Element = value {
                    values.append(value)
                }
            }
        })
        return values
    }
}
internal enum SovereignRegions {    
    fileprivate static func formatTime(date: Date, timeZone: TimeZone, timeStyle: DateFormatter.Style, dateStyle: DateFormatter.Style, showAbbreviation: Bool) -> String {
        let formatter:DateFormatter = DateFormatter()
        formatter.timeStyle = timeStyle
        formatter.dateStyle = dateStyle
        formatter.timeZone = timeZone
        formatter.calendar = Calendar.current
        let string:String = formatter.string(from: date)
        guard showAbbreviation, let abbreviation:String = timeZone.abbreviation() else { return string }
        return string + " " + abbreviation
    }
    fileprivate static func urlEncoded(_ string: String) -> String {
        return string.addingPercentEncoding(withAllowedCharacters: .urlQueryAllowed) ?? string
    }
    
    static func doesEqual(string: String, values: Set<String>, option: String.CompareOptions) -> Bool {
        return values.first(where: { string.compare($0, options: option) == .orderedSame }) != nil
    }
    static func doesSatisfy(string: String, values: Set<String>) -> Bool {
        guard let value:String = values.first(where: { string.contains($0) }) else { return false }
        return string.range(of: prefixRegex + "(" + value + ")" + suffixRegex, options: [.regularExpression]) != nil
    }
    static func doesSatisfy2(string_start_index: String.Index, string_end_index: String.Index, string_lowercased: String, values: Set<String>) -> Bool {
        for value in values {
            let ranges:Set<Range<String.Index>> = string_lowercased.all_ranges(of: value)
            for range in ranges {
                let prefix_index:String.Index? = string_lowercased.index(range.lowerBound, offsetBy: -1, limitedBy: string_start_index)
                if (prefix_index == nil || !string_lowercased[prefix_index!].isLetter) && (range.upperBound == string_end_index || !string_lowercased[range.upperBound].isLetter) {
                    return true
                }
            }
        }
        return false
    }
    
    private static let prefixRegex:String = {
        let string:String = [
            " ",
            "-", "–",
            "\\(", "\\[",
            "/",
            "\"",
            "^"
        ].joined(separator: "|")
        return "(" + string + ")"
    }()
    private static let suffixRegex:String = {
        let string:String = [
            " ",
            "\\.", "\\?", "\\!",
            ",",
            ";", ":",
            "-", "–",
            "'", "\"",
            "\\)", "\\]",
            "/"
        ].joined(separator: "|")
        return "(" + string + ")"
    }()
}

extension String {
    func all_ranges(of substring: String) -> Set<Range<Index>> {
        var ranges:Set<Range<Index>> = []
        var last_range:Index? = nil
        while let range:Range<Index> = range(of: substring, range: (last_range ?? self.startIndex)..<self.endIndex) {
            ranges.insert(range)
            last_range = range.upperBound
        }
        return ranges
    }
}


public protocol SovereignRegionWrapper : SovereignRegion {
}
public extension SovereignRegionWrapper {
    static var allCases : [Self] {
        return []
    }
    
    static func == (lhs: Self, rhs: Self) -> Bool {
        return lhs.cache_id.elementsEqual(rhs.cache_id)
    }
    
    func hash(into hasher: inout Hasher) {
        hasher.combine(cache_id)
    }
    
    func encode(to encoder: Encoder) throws {
        var container:SingleValueEncodingContainer = encoder.singleValueContainer()
        try container.encode(cache_id)
    }
}
