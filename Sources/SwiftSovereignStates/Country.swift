//
//  Country.swift
//  
//
//  Created by Evan Anderson on 6/12/22.
//

import Foundation

public enum Country : String, CaseIterable, SovereignState {
    case abkhazia
    case afghanistan
    case albania
    case algeria
    case american_samoa
    case andorra
    case angola
    case anguilla
    case antigua_and_barbuda
    case argentina
    case armenia
    case aruba
    case artsakh
    case australia
    case austria
    case azerbaijan
    
    case bahamas
    case bahrain
    case bangladesh
    case barbados
    case belarus
    case belgium
    case belize
    case benin
    case bermuda
    case bhutan
    case bolivia
    case bosnia_and_herzegovina
    case botswana
    case brazil
    case british_virgin_islands
    case brunei
    case bulgaria
    case burkina_faso
    case burundi
    
    case cambodia
    case cameroon
    case canada
    case cape_verde
    case cayman_islands
    case central_african_republic
    case chad
    case chile
    case china
    case colombia
    case comoros
    case cook_islands
    case costa_rica
    case ivory_coast
    case croatia
    case cuba
    case curacao
    case cyprus
    case czech_republic
    
    case democratic_republic_of_the_congo
    case denmark
    case djibouti
    case dominica
    case dominican_republic
    
    case ecuador
    case egypt
    case el_salvador
    case equatorial_guinea
    case eritrea
    case estonia
    case eswatini
    case ethiopia
    
    case falkland_islands
    case faroe_islands
    case fiji
    case finland
    case france
    case french_polynesia
    
    case gabon
    case gambia
    case georgia
    case germany
    case ghana
    case gibraltar
    case greece
    case greenland
    case grenada
    case guadeloupe
    case guam
    case guatemala
    case guernsey
    case guinea
    case guinea_bissau
    case guyana
    
    case haiti
    case honduras
    case hong_kong
    case hungary
    
    case iceland
    case india
    case indonesia
    case iran
    case iraq
    case ireland
    case israel
    case isle_of_man
    case italy
    
    case jamaica
    case japan
    case jersey
    case jordan
    
    case kazakhstan
    case kenya
    case kiribati
    case kosovo
    case kuwait
    case kyrgyzstan
    
    case laos
    case latvia
    case lebanon
    case lesotho
    case liberia
    case libya
    case liechtenstein
    case lithuania
    case luxembourg
    
    case macau
    case madagascar
    case malawi
    case malaysia
    case maldives
    case mali
    case malta
    case marshall_islands
    case mauritania
    case mauritius
    case mexico
    case micronesia
    case moldova
    case monaco
    case mongolia
    case montenegro
    case montserrat
    case morocco
    case mozambique
    case myanmar
    
    case namibia
    case nauru
    case nepal
    case netherlands
    case new_caledonia
    case new_zealand
    case nicaragua
    case niger
    case nigeria
    case niue
    case norfolk_island
    case north_korea
    case north_macedonia
    case northern_mariana_islands
    case northern_cyprus
    case norway
    
    case oman
    
    case pakistan
    case palau
    case palestine
    case panama
    case papua_new_guinea
    case paraguay
    case peru
    case philippines
    case poland
    case portugal
    
    case qatar
    
    case republic_of_the_congo
    case romania
    case russia
    case rwanda
    
    case saint_barthelemy
    case saint_helena_ascension_and_tristan_da_cunha
    case saint_kitts_and_nevis
    case saint_lucia
    case saint_martin
    case saint_pierre_and_miquelon
    case saint_vincent_and_the_grenadines
    case samoa
    case san_marino
    case sao_tome_and_principe
    case saudi_arabia
    case scotland
    case senegal
    case serbia
    case seychelles
    case sierra_leone
    case singapore
    case slovakia
    case slovenia
    case solomon_islands
    case somalia
    case somaliland
    case south_africa
    case south_korea
    case south_sudan
    case spain
    case sri_lanka
    case sudan
    case suriname
    case sweden
    case switzerland
    case syria
    
    case taiwan
    case tajikistan
    case tanzania
    case thailand
    case timor_leste
    case togo
    case tokelau
    case tonga
    case transnistria
    case trinidad_and_tobago
    case tunisia
    case turkey
    case turkmenistan
    case turks_and_caicos_islands
    case tuvalu
    
    case uganda
    case ukraine
    case united_arab_emirates
    case united_kingdom
    case united_states
    case united_states_virgin_islands
    case uruguay
    case uzbekistan
    
    case vanuatu
    case vatican_city
    case venezuela
    case vietnam
    
    case wallis_and_futuna
    case western_sahara
    
    case yemen
    
    case zambia
    case zimbabwe
    
    case puerto_rico
    
    /// Returns all countries that are mentioned in the `string`.
    public static func getAllMentioned(_ string: String, cache: Bool = true) -> [Country]? {
        let stringLowercase:String = string.lowercased()
        if let cached:[Country] = SwiftSovereignStateCacheCountries.mentioned[stringLowercase] {
            return cached
        }
        let countries:[Country] = Country.allCases.filter({ $0.isMentioned(in: string) })
        if cache {
            SwiftSovereignStateCacheCountries.mentioned[stringLowercase] = countries
        }
        return countries.isEmpty ? nil : countries
    }
    /// Returns the first country that is mentioned in the `string`.
    public static func valueOf(_ string: String, cache: Bool = true) -> Country? {
        let stringLowercase:String = string.lowercased()
        if let cached:Country = SwiftSovereignStateCacheCountries.valueOf[stringLowercase] {
            return cached
        }
        let country:Country? = Country.allCases.first(where: { $0.isMentioned(in: string, exact: true) })
        if cache {
            SwiftSovereignStateCacheCountries.valueOf[stringLowercase] = country
        }
        return country
    }
    /// Returns the country that identifies with the specified identifier.
    public static func valueOfIdentifier(_ identifier: String) -> Country? {
        return Country.allCases.first(where: { identifier.elementsEqual($0.getIdentifier()) })
    }
    
    public init?(_ description: String) {
        guard let country:Country = Country.valueOfIdentifier(description) else { return nil }
        self = country
    }
    
    public func getCacheID() -> String {
        return rawValue
    }
    
    public func getAdditionalKeywords() -> [String]? {
        var keywords:[String] = [String]()
        if let parentISOAlpha2:String = getISOAlpha2ParentGroup() {
            keywords.append(parentISOAlpha2)
        }
        return keywords
    }
    
    public func getWikipediaURL() -> String {
        let prefix:String = "https://en.wikipedia.org/wiki/"
        let name:String
        switch self {
        case .georgia:
            name = "Georgia_(country)"
            break
        case .micronesia:
            name = "Federated States of Micronesia"
            break
        case .saint_helena_ascension_and_tristan_da_cunha:
            name = "Saint_Helena%2C_Ascension_and_Tristan_da_Cunha"
            break
        case .saint_martin:
            name = "Saint_Martin_(island)"
            break
        default:
            name = getShortName().replacingOccurrences(of: " ", with: "_")
            break
        }
        return prefix + name
    }
    
    public func getWikipediaSuffix() -> String {
        let shortName:String = getShortName().replacingOccurrences(of: " ", with: "_")
        switch self {
        case .bahamas,
                .central_african_republic,
                .republic_of_the_congo,
                .democratic_republic_of_the_congo,
                .czech_republic,
                .dominican_republic,
                .marshall_islands,
                .netherlands,
                .philippines,
                .solomon_islands,
                .united_arab_emirates,
                .united_kingdom,
                .united_states:
            return "the_" + shortName
        case .gambia:
            return "The_" + shortName
        case .micronesia:
            return "the_Federated_States_of_" + shortName
        default:
            return shortName
        }
    }
    
    public func getRealName() -> String? {
        switch self {
        case .curacao: return "Curaçao"
        case .saint_barthelemy: return "Saint Barthélemy"
        case .sao_tome_and_principe: return "São Tomé and Príncipe"
        default: return nil
        }
    }
    public func getShortNamePrefix() -> String {
        switch self {
        case .bahamas,
                .british_virgin_islands,
                .cayman_islands,
                .central_african_republic,
                .comoros,
                .cook_islands,
                .czech_republic,
                .democratic_republic_of_the_congo,
                .gambia,
                .marshall_islands,
                .netherlands,
                .northern_mariana_islands,
                .philippines,
                .republic_of_the_congo,
                .solomon_islands,
                .united_arab_emirates,
                .united_kingdom,
                .united_states:
            return "the "
        case .micronesia:
            return "the Federated States of "
        default:
            return ""
        }
    }
    
    public func getAliases() -> [String]? {
        switch self {
        case .bahamas: return ["The Bahamas", "Bahamas, the"]
        case .bosnia_and_herzegovina: return ["BiH", "B&H", "Bosnia–Herzegovina", "Bosnia-Herzegovina", "Bosnia"]
        case .cape_verde: return ["Cabo Verde"]
        case .china: return ["People's Republic of China"]
        case .ivory_coast: return ["Côte d'Ivoire", "Cote d'Ivoire", "Côte d’Ivoire"]
        case .czech_republic: return ["Czechia"]
        case .democratic_republic_of_the_congo: return ["Congo, Democratic Republic of", "Congo-Kinshasa", "Democratic Republic of Congo", "Democratic Republic of Congo", "DR Congo", "the DRC", "DROC", "Congo, the", "Congo", "Congo, Dem."]
        case .eswatini: return ["Swaziland"]
        case .gambia: return ["The Gambia", "Gambia, the"]
        case .guinea_bissau: return ["Guinea-Bissau"]
        case .hong_kong: return ["Hong Kong SAR"]
        case .iran: return ["Persia"]
        case .isle_of_man: return ["Mann"]
        case .luxembourg: return ["Luxemburg"]
        case .macau: return ["Macao", "Macau, SAR of China"]
        case .micronesia: return ["Micronesia, Federated States of"]
        case .myanmar: return ["Burma"]
        case .north_korea: return ["Korea, North"]
        case .north_macedonia: return ["Macedonia"]
        case .northern_cyprus: return ["North Cyprus"]
        case .palestine: return ["Palestine, State of"]
        case .philippines: return ["Philipines"]
        case .republic_of_the_congo: return ["Congo, Republic of the", "Congo-Brazzaville", "Republic of Congo", "Congo", "Congo, the", "Congo Republic", "Congo, Rep."]
        case .saint_barthelemy: return ["St. Barthélemy"]
        case .saint_helena_ascension_and_tristan_da_cunha: return ["Saint Helena, Ascension and Tristan da Cunha", "St. Helena, Ascension and Tristan da Cunha", "Saint Helena", "St. Helena"]
        case .saint_kitts_and_nevis: return ["St. Kitts and Nevis"]
        case .saint_lucia: return ["St. Lucia"]
        case .saint_martin: return ["St. Martin"]
        case .saint_pierre_and_miquelon: return ["St. Pierre and Miquelon"]
        case .saint_vincent_and_the_grenadines: return ["St. Vincent and the Grenadines", "Saint Vincent", "St. Vincent"]
        case .sao_tome_and_principe: return ["Sao Tome"]
        case .solomon_islands: return ["Soloman Island"]
        case .south_korea: return ["Korea, South", "Korea (Republic of)"]
        case .taiwan: return ["Chinese Taipei"]
        case .timor_leste: return ["Timor-Leste", "East Timor"]
        case .united_arab_emirates: return ["UAE"]
        case .united_states: return ["United States of America"]
        case .united_states_virgin_islands: return ["U.S. Virgin Islands", "United States Virgin Islands", "US Virgin Islands"]
        case .vatican_city: return ["Holy See"]
        default: return nil
        }
    }
    
    /// Whether or not this Country is recognized by the United Nations as a sovereign state member.
    public func isUNMember() -> Bool {
        switch self {
        case .abkhazia,
                .american_samoa,
                .anguilla,
                .artsakh,
                .aruba,
                .bermuda,
                .british_virgin_islands,
                .cayman_islands,
                .cook_islands,
                .curacao,
                .falkland_islands,
                .faroe_islands,
                .french_polynesia,
                .gibraltar,
                .greenland,
                .guadeloupe,
                .guam,
                .guernsey,
                .hong_kong,
                .isle_of_man,
                .jersey,
                .kosovo,
                .macau,
                .montserrat,
                .new_caledonia,
                .niue,
                .norfolk_island,
                .northern_cyprus,
                .northern_mariana_islands,
                .palestine,
                .puerto_rico,
                .saint_barthelemy,
                .saint_helena_ascension_and_tristan_da_cunha,
                .saint_martin,
                .saint_pierre_and_miquelon,
                .scotland,
                .somalia,
                .taiwan,
                .tokelau,
                .transnistria,
                .turks_and_caicos_islands,
                .united_states_virgin_islands,
                .vatican_city,
                .wallis_and_futuna,
                .western_sahara
            :
            return false
        default:
            return true
        }
    }
    /// Whether or not this Country is only recognized by the United Nations as a sovereign state.
    public func isUNObserverState() -> Bool {
        return self == .palestine || self == .vatican_city
    }
    
    public func getOfficialNames() -> [String]? {
        return SovereignStateOfficialNames.get(self)
    }
    
    public func getISOAlpha2() -> String? {
        return SovereignStateISOAlpha2.get(self)
    }
    public func getISOAlpha2Alias() -> String? {
        return SovereignStateISOAlpha2.getAlias(self)
    }
    public func getISOAlpha2ParentGroup() -> String? {
        return SovereignStateISOAlpha2.getParentGroup(self)
    }
    public func getISOAlpha3() -> String? {
        return SovereignStateISOAlpha3.get(self)
    }
    
    public func getNeighbors() -> [Country]? {
        return SovereignStateNeighbors.get(self)
    }
    public func getGovernmentWebsite() -> String? {
        return SovereignStateGovernmentWebsite.get(self)
    }
    
    /// The unicode flag for this Country.
    public func getFlagEmoji() -> String? {
        return SovereignStateFlagEmoji.get(self)
    }
    public func getTimeZones() -> [SovereignStateTimeZone]? {
        return SovereignStateTimeZone.get(self)
    }
    /// The official currencies used within this country.
    public func getCurrencies() -> [Currency]? {
        return SovereignStateCurrencies.get(self)
    }
    
    public func getFlagURL() -> String? {
        guard let isoAlpha2:String = getISOAlpha2()?.lowercased() else { return nil }
        return "https://raw.githubusercontent.com/stsrki/country-flags/master/png1000px/" + isoAlpha2 + ".png"
    }
    
    public func getUNStatus() -> String? {
        switch self {
        case .abkhazia,
                .artsakh,
                .northern_cyprus,
                .somaliland,
                .transnistria
            :
            return "NO MEMBERSHIP"
        case .kosovo:
            return "UN SPECIAL AGENCY MEMBER"
        case .palestine,
                .vatican_city
            :
            return "UN OBSERVER STATE"
        case .taiwan:
            return "FORMER UN MEMBER STATE"
        case .cook_islands,
                .marshall_islands,
                .micronesia,
                .niue,
                .palau
                :
            return "UN ASSOCIATED STATE"
        case .american_samoa,
                .aruba,
                .cayman_islands,
                .curacao,
                .falkland_islands,
                .faroe_islands,
                .french_polynesia,
                .gibraltar,
                .greenland,
                .guam,
                .guadeloupe,
                .guernsey,
                .isle_of_man,
                .jersey,
                .montserrat,
                .new_caledonia,
                .northern_mariana_islands,
                .puerto_rico,
                .saint_barthelemy,
                .saint_helena_ascension_and_tristan_da_cunha,
                .saint_martin,
                .saint_pierre_and_miquelon,
                .tokelau,
                .turks_and_caicos_islands,
                .united_states_virgin_islands,
                .wallis_and_futuna
            :
            return "TERRITORY BELONGS TO A UN MEMBER"
        default:
            return nil // is UN member state
        }
    }
    public func getSovereigntyDispute() -> String? {
        switch self {
        case .abkhazia: return "Claimed by Georgia; recognized by 8 territories"
        case .armenia: return "Not recognised by Pakistan"
        case .artsakh: return "Claimed by Azerbaijan; recognized by 3 territories (Abkhazia, South Ossetia, and Transnistria)"
        case .china: return "Partially unrecognised. Claimed by the Republic of China (Taiwan)"
        case .cyprus: return "Not recognised by Turkey"
        case .israel: return "Unrecognised as a state by 28 UN member states"
        case .kosovo: return "Claimed by Serbia; recognised by 112 UN member states"
        case .north_korea: return "Claimed by South Korea; unrecognised by 3 UN members (France, Japan, and South Korea)"
        case .northern_cyprus: return "Claimed by Cyprus; recognised only by Turkey"
        case .palestine: return "Unrecognised as a state by Israel; recognised by 138 UN member states"
        case .somaliland: return "Claimed by Somalia; not recognised by any state or territory"
        case .south_korea: return "Claimed by North Korea"
        case .taiwan: return "Claimed by the People's Republic of China (China)"
        case .transnistria: return "Claimed by Moldova; recognised only by Abkhazia, Artsakh, and South Ossetia"
        default: return nil
        }
    }
}

public extension Country {
    /// The level-1 administrative units this Country claims territorial ownership of.
    func getSubdivisions() -> [any SovereignStateSubdivision]? {
        switch self {
        case .afghanistan: return SubdivisionsAfghanistan.allCases
        case .albania: return SubdivisionsAlbania.allCases
        case .algeria: return SubdivisionsAlgeria.allCases
        case .andorra: return SubdivisionsAndorra.allCases
        case .angola: return SubdivisionsAngola.allCases
        case .antigua_and_barbuda: return SubdivisionsAntiguaAndBarbuda.allCases
        case .argentina: return SubdivisionsArgentina.allCases
        case .armenia: return SubdivisionsArmenia.allCases
        case .australia: return SubdivisionsAustralia.allCases
        case .austria: return SubdivisionsAustria.allCases
        case .azerbaijan: return SubdivisionsAzerbaijan.allCases
        
        case .bahamas: return SubdivisionsBahamas.allCases
        case .bahrain: return SubdivisionsBahrain.allCases
        case .bangladesh: return SubdivisionsBangladesh.allCases
        case .barbados: return SubdivisionsBarbados.allCases
        case .belarus: return SubdivisionsBelarus.allCases
        case .belize: return SubdivisionsBelize.allCases
        case .benin: return SubdivisionsBenin.allCases
        case .bhutan: return SubdivisionsBhutan.allCases
        case .bolivia: return SubdivisionsBolivia.allCases
        case .botswana: return SubdivisionsBotswana.allCases
        case .brazil: return SubdivisionsBrazil.allCases
        case .bulgaria: return SubdivisionsBulgaria.allCases
        case .burkina_faso: return SubdivisionsBurkinaFaso.allCases
        case .burundi: return SubdivisionsBurundi.allCases
        
        case .cambodia: return SubdivisionsCambodia.allCases
        case .cameroon: return SubdivisionsCameroon.allCases
        case .canada: return SubdivisionsCanada.allCases
        case .central_african_republic: return SubdivisionsCentralAfricanRepublic.allCases
        case .chad: return SubdivisionsChad.allCases
        case .chile: return SubdivisionsChile.allCases
        case .comoros: return SubdivisionsComoros.allCases
        case .costa_rica: return SubdivisionsCostaRica.allCases
        case .cuba: return SubdivisionsCuba.allCases
        case .czech_republic: return SubdivisionsCzechRepublic.allCases
        
        case .denmark: return SubdivisionsDenmark.allCases
        case .djibouti: return SubdivisionsDjibouti.allCases
        case .dominica: return SubdivisionsDominica.allCases
        case .dominican_republic: return SubdivisionsDominicanRepublic.allCases
            
        case .ecuador: return SubdivisionsEcuador.allCases
        case .egypt: return SubdivisionsEgypt.allCases
        case .el_salvador: return SubdivisionsElSalvador.allCases
        case .eritrea: return SubdivisionsEritrea.allCases
        case .estonia: return SubdivisionsEstonia.allCases
        case .ethiopia: return SubdivisionsEthiopia.allCases
        
        case .fiji: return SubdivisionsFiji.allCases
        case .france: return SubdivisionsFrance.allCases
            
        case .germany: return SubdivisionsGermany.allCases
        case .greece: return SubdivisionsGreece.allCases
        case .guadeloupe: return SubdivisionsGuadeloupe.allCases
        case .guatemala: return SubdivisionsGuatemala.allCases
            
        case .haiti: return SubdivisionsHaiti.allCases
        case .honduras: return SubdivisionsHonduras.allCases
        case .hungary: return SubdivisionsHungary.allCases
        
        case .iceland: return SubdivisionsIceland.allCases
        case .india: return SubdivisionsIndia.allCases
        case .indonesia: return SubdivisionsIndonesia.allCases
        case .ireland: return SubdivisionsIreland.allCases
        case .iraq: return SubdivisionsIraq.allCases
        case .iran: return SubdivisionsIran.allCases
        case .israel: return SubdivisionsIsrael.allCases
        case .italy: return SubdivisionsItaly.allCases
        case .ivory_coast: return SubdivisionsIvoryCoast.allCases
        
        case .jamaica: return SubdivisionsJamaica.allCases
        case .japan: return SubdivisionsJapan.allCases
        case .jersey: return SubdivisionsJersey.allCases
        case .jordan: return SubdivisionsJordan.allCases
        
        case .kazakhstan: return SubdivisionsKazakhstan.allCases
        case .kenya: return SubdivisionsKenya.allCases
        case .kuwait: return SubdivisionsKuwait.allCases
        case .kyrgyzstan: return SubdivisionsKyrgyzstan.allCases
        
        case .laos: return SubdivisionsLaos.allCases
        case .latvia: return SubdivisionsLatvia.allCases
        case .lebanon: return SubdivisionsLebanon.allCases
        case .lesotho: return SubdivisionsLesotho.allCases
        case .liberia: return SubdivisionsLiberia.allCases
        case .libya: return SubdivisionsLibya.allCases
        case .liechtenstein: return SubdivisionsLiechtenstein.allCases
        case .lithuania: return SubdivisionsLithuania.allCases
        case .luxembourg: return SubdivisionsLuxembourg.allCases
        
        case .madagascar: return SubdivisionsMadagascar.allCases
        case .malaysia: return SubdivisionsMalaysia.allCases
        case .mali: return SubdivisionsMali.allCases
        case .malta: return SubdivisionsMalta.allCases
        case .mauritania: return SubdivisionsMauritania.allCases
        case .mauritius: return SubdivisionsMauritius.allCases
        case .mexico: return SubdivisionsMexico.allCases
        case .micronesia: return SubdivisionsMicronesia.allCases
        case .moldova: return SubdivisionsMoldova.allCases
        case .mongolia: return SubdivisionsMongolia.allCases
        case .montenegro: return SubdivisionsMontenegro.allCases
        
        case .namibia: return SubdivisionsNamibia.allCases
        case .nepal: return SubdivisionsNepal.allCases
        case .netherlands: return SubdivisionsNetherlands.allCases
        case .new_zealand: return SubdivisionsNewZealand.allCases
        case .nicaragua: return SubdivisionsNicaragua.allCases
        case .niger: return SubdivisionsNiger.allCases
        case .nigeria: return SubdivisionsNigeria.allCases
        case .norway: return SubdivisionsNorway.allCases
            
        case .oman: return SubdivisionsOman.allCases
            
        case .pakistan: return SubdivisionsPakistan.allCases
        case .palau: return SubdivisionsPalau.allCases
        case .palestine: return SubdivisionsPalestine.allCases
        case .panama: return SubdivisionsPanama.allCases
        case .papua_new_guinea: return SubdivisionsPapuaNewGuinea.allCases
        case .paraguay: return SubdivisionsParaguay.allCases
        case .peru: return SubdivisionsPeru.allCases
        case .philippines: return SubdivisionsPhilippines.allCases
        case .poland: return SubdivisionsPoland.allCases
        case .portugal: return SubdivisionsPortugal.allCases
        
        case .qatar: return SubdivisionsQatar.allCases
        
        case .romania: return SubdivisionsRomania.allCases
        case .rwanda: return SubdivisionsRwanda.allCases
        
        case .samoa: return SubdivisionsSamoa.allCases
        case .sao_tome_and_principe: return SubdivisionsSaoTomeAndPrincipe.allCases
        case .senegal: return SubdivisionsSenegal.allCases
        case .slovakia: return SubdivisionsSlovakia.allCases
        case .slovenia: return SubdivisionsSlovenia.allCases
        case .south_korea: return SubdivisionsSouthKorea.allCases
        case .south_sudan: return SubdivisionsSouthSudan.allCases
        case .spain: return SubdivisionsSpain.allCases
        case .sri_lanka: return SubdivisionsSriLanka.allCases
        case .suriname: return SubdivisionsSuriname.allCases
        case .sweden: return SubdivisionsSweden.allCases
        case .switzerland: return SubdivisionsSwitzerland.allCases
        case .syria: return SubdivisionsSyria.allCases
        
        case .tanzania: return SubdivisionsTanzania.allCases
        case .thailand: return SubdivisionsThailand.allCases
        case .timor_leste: return SubdivisionsTimorLeste.allCases
        case .togo: return SubdivisionsTogo.allCases
        case .tonga: return SubdivisionsTonga.allCases
        case .tunisia: return SubdivisionsTunisia.allCases
        case .turkey: return SubdivisionsTurkey.allCases
        case .turkmenistan: return SubdivisionsTurkmenistan.allCases
        
        case .ukraine: return SubdivisionsUkraine.allCases
        case .united_states: return SubdivisionsUnitedStates.allCases
        case .uruguay: return SubdivisionsUruguay.allCases
        case .uzbekistan: return SubdivisionsUzbekistan.allCases
        
        case .vanuatu: return SubdivisionsVanuatu.allCases
        case .venezuela: return SubdivisionsVenezuela.allCases
        case .vietnam: return SubdivisionsVietnam.allCases
        
        case .yemen: return SubdivisionsYemen.allCases
        
        case .zambia: return SubdivisionsZambia.allCases
        case .zimbabwe: return SubdivisionsZimbabwe.allCases
        default: return nil
        }
    }
}
