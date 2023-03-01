//
//  SubdivisionsUnitedStates.swift
//  
//
//  Created by Evan Anderson on 6/16/22.
//

import Foundation

public enum SubdivisionsUnitedStates : String, SovereignStateSubdivision { // https://en.wikipedia.org/wiki/List_of_states_and_territories_of_the_United_States
    case alabama
    case alaska
    case arizona
    case arkansas
    case california
    case colorado
    case connecticut
    case delaware
    case florida
    case georgia
    case hawaii
    case idaho
    case illinois
    case indiana
    case iowa
    case kansas
    case kentucky
    case louisiana
    case maine
    case maryland
    case massachusetts
    case michigan
    case minnesota
    case mississippi
    case missouri
    case montana
    case nebraska
    case nevada
    case new_hampshire
    case new_jersey
    case new_mexico
    case new_york
    case north_carolina
    case north_dakota
    case ohio
    case oklahoma
    case oregon
    case pennsylvania
    case rhode_island
    case south_carolina
    case south_dakota
    case tennessee
    case texas
    case utah
    case vermont
    case virginia
    case washington
    case west_virginia
    case wisconsin
    case wyoming
    
    case american_samoa
    case washington_dc
    case puerto_rico
    case guam
    case northern_mariana_islands
    case united_states_virgin_islands
    
    case marshall_islands
    case micronesia
    case palau
    
    public var country : Country {
        return Country.united_states
    }
    
    public var type : SovereignStateSubdivisionType {
        switch self {
        case .american_samoa,
                .puerto_rico,
                .guam,
                .northern_mariana_islands,
                .united_states_virgin_islands:
            return SovereignStateSubdivisionType.territories
        case .washington_dc:
            return SovereignStateSubdivisionType.federal_districts
        case .marshall_islands,
                .micronesia,
                .palau:
            return SovereignStateSubdivisionType.freely_associated_states
        default:
            return SovereignStateSubdivisionType.states
        }
    }
    
    public var real_name : String? {
        switch self {
        case .washington_dc: return "Washington, D.C."
        default: return nil
        }
    }
    
    public var wikipedia_url_suffix : String? {
        switch self {
        case .georgia:
            return "_(U.S._" + type_suffix.lowercased() + ")"
        case .new_york,
                .washington:
            return "_(" + type_suffix.lowercased() + ")"
        default:
            return nil
        }
    }
    
    public var iso_alpha_2 : String? {
        switch self {
        case .alabama: return "AL"
        case .alaska: return "AK"
        case .arizona: return "AZ"
        case .arkansas: return "AR"
        case .california: return "CA"
        case .colorado: return "CO"
        case .connecticut: return "CT"
        case .delaware: return "DE"
        case .florida: return "FL"
        case .georgia: return "GA"
        case .hawaii: return "HI"
        case .idaho: return "ID"
        case .illinois: return "IL"
        case .indiana: return "IN"
        case .iowa: return "IA"
        case .kansas: return "KS"
        case .kentucky: return "KY"
        case .louisiana: return "LA"
        case .maine: return "ME"
        case .maryland: return "MD"
        case .massachusetts: return "MA"
        case .michigan: return "MI"
        case .minnesota: return "MN"
        case .mississippi: return "MS"
        case .missouri: return "MO"
        case .montana: return "MT"
        case .nebraska: return "NE"
        case .nevada: return "NV"
        case .new_hampshire: return "NH"
        case .new_jersey: return "NJ"
        case .new_mexico: return "NM"
        case .new_york: return "NY"
        case .north_carolina: return "NC"
        case .north_dakota: return "ND"
        case .ohio: return "OH"
        case .oklahoma: return "OK"
        case .oregon: return "OR"
        case .pennsylvania: return "PA"
        case .rhode_island: return "RI"
        case .south_carolina: return "SC"
        case .south_dakota: return "SD"
        case .tennessee: return "TN"
        case .texas: return "TX"
        case .utah: return "UT"
        case .vermont: return "VT"
        case .virginia: return "VA"
        case .washington: return "WA"
        case .west_virginia: return "WV"
        case .wisconsin: return "WI"
        case .wyoming: return "WY"

        case .washington_dc: return "DC"
        case .united_states_virgin_islands: return "VI"

        case .american_samoa: return Country.american_samoa.iso_alpha_2
        case .puerto_rico: return Country.puerto_rico.iso_alpha_2
        case .guam: return Country.guam.iso_alpha_2
        case .northern_mariana_islands: return Country.northern_mariana_islands.iso_alpha_2
            
        case .marshall_islands: return Country.marshall_islands.iso_alpha_2
        case .micronesia: return Country.micronesia.iso_alpha_2
        case .palau: return Country.palau.iso_alpha_2
        }
    }
    
    public var government_website : String? {
        switch self {
        case .alabama,
                .alaska,
                .arkansas,
                .colorado,
                .delaware,
                .georgia,
                .hawaii,
                .idaho,
                .illinois,
                .iowa,
                .kansas,
                .kentucky,
                .louisiana,
                .maine,
                .maryland,
                .michigan,
                .nebraska,
                .ohio,
                .oklahoma,
                .oregon,
                .texas,
                .utah,
                .vermont,
                .virginia,
                .wisconsin:
            return "https://" + rawValue + ".gov"
        case .florida: return "https://www.myflorida.com"
        case .massachusetts: return "https://www.mass.gov"
        case .west_virginia: return "https://www.wv.gov"
        case .wyoming: return "https://www.wyo.gov"
        case .american_samoa,
                .guam,
                .northern_mariana_islands,
                .puerto_rico,
                .united_states_virgin_islands:
            return nil
        case .marshall_islands: return Country.marshall_islands.government_website
        case .micronesia: return Country.micronesia.government_website
        case .palau: return Country.palau.government_website
        default:
            guard let isoAlpha2:String = iso_alpha_2 else { return nil }
            return "https://" + isoAlpha2 + ".gov"
        }
    }
    
    public var wikipedia_flag_url_svg_id : String? {
        switch self {
        case .alabama: return "5/5c/Flag_of_Alabama"
        case .alaska: return "e/e6/Flag_of_Alaska"
        case .arizona: return "9/9d/Flag_of_Arizona"
        case .arkansas: return "9/9d/Flag_of_Arkansas"
        case .california: return "0/01/Flag_of_California"
        case .colorado: return "4/46/Flag_of_Colorado"
        case .connecticut: return "9/96/Flag_of_Connecticut"
        case .delaware: return "c/c6/Flag_of_Delaware"
        case .florida: return "f/f7/Flag_of_Florida"
        case .georgia: return "5/54/Flag_of_Georgia_%28U.S._state%29"
        case .hawaii: return "e/ef/Flag_of_Hawaii"
        case .idaho: return "a/a4/Flag_of_Idaho"
        case .illinois: return "0/01/Flag_of_Illinois"
        case .indiana: return "a/ac/Flag_of_Indiana"
        case .iowa: return "a/aa/Flag_of_Iowa"
        case .kansas: return "d/da/Flag_of_Kansas"
        case .kentucky: return "8/8d/Flag_of_Kentucky"
        case .louisiana: return "e/e0/Flag_of_Louisiana"
        case .maine: return "3/35/Flag_of_Maine"
        case .maryland: return "a/a0/Flag_of_Maryland"
        case .massachusetts: return "f/f2/Flag_of_Massachusetts"
        case .michigan: return "b/b5/Flag_of_Michigan"
        case .minnesota: return "b/b9/Flag_of_Minnesota"
        case .mississippi: return "4/42/Flag_of_Mississippi"
        case .missouri: return "5/5a/Flag_of_Missouri"
        case .montana: return "7/7a/State_Flag_of_Montana"
        case .nebraska: return "4/4d/Flag_of_Nebraska"
        case .nevada: return "f/f1/Flag_of_Nevada"
        case .new_hampshire: return "2/28/Flag_of_New_Hampshire"
        case .new_jersey: return "9/92/Flag_of_New_Jersey"
        case .new_mexico: return "c/c3/Flag_of_New_Mexico"
        case .new_york: return "1/1a/Flag_of_New_York"
        case .north_carolina: return "b/bb/Flag_of_North_Carolina"
        case .north_dakota: return "e/ee/Flag_of_North_Dakota"
        case .ohio: return "4/4c/Flag_of_Ohio"
        case .oklahoma: return "6/6e/Flag_of_Oklahoma"
        case .oregon: return "b/b9/Flag_of_Oregon"
        case .pennsylvania: return "f/f7/Flag_of_Pennsylvania"
        case .rhode_island: return "f/f3/Flag_of_Rhode_Island"
        case .south_carolina: return "6/69/Flag_of_South_Carolina"
        case .south_dakota: return "1/1a/Flag_of_South_Dakota"
        case .tennessee: return "9/9e/Flag_of_Tennessee"
        case .texas: return "f/f7/Flag_of_Texas"
        case .utah: return "f/f6/Flag_of_Utah"
        case .vermont: return "4/49/Flag_of_Vermont"
        case .virginia: return "4/47/Flag_of_Virginia"
        case .washington: return "5/54/Flag_of_Washington"
        case .west_virginia: return "2/22/Flag_of_West_Virginia"
        case .wisconsin: return "2/22/Flag_of_Wisconsin"
        case .wyoming: return "b/bc/Flag_of_Wyoming"

        case .american_samoa: return "8/87/Flag_of_American_Samoa"
        case .guam: return "0/07/Flag_of_Guam"
        case .marshall_islands: return "2/2e/Flag_of_the_Marshall_Islands"
        case .micronesia: return "e/e4/Flag_of_the_Federated_States_of_Micronesia"
        case .northern_mariana_islands: return "e/e0/Flag_of_the_Northern_Mariana_Islands"
        case .palau: return "4/48/Flag_of_Palau"
        case .puerto_rico: return "2/28/Flag_of_Puerto_Rico"
        case .united_states_virgin_islands: return "f/f8/Flag_of_the_United_States_Virgin_Islands"
        case .washington_dc: return "d/d4/Flag_of_the_District_of_Columbia"
        }
    }
    
    public var time_zones : [SovereignStateTimeZone]? {
        let cst:SovereignStateTimeZone = SovereignStateTimeZone.america_central_standard_time
        let est:SovereignStateTimeZone = SovereignStateTimeZone.america_eastern_standard_time
        let hawaiiStandardTime:SovereignStateTimeZone = SovereignStateTimeZone.america_hawaii_standard_time
        let mountainStandardTime:SovereignStateTimeZone = SovereignStateTimeZone.america_mountain_standard_time
        let pst:SovereignStateTimeZone = SovereignStateTimeZone.america_pacific_standard_time
        let atlanticStandardTime:SovereignStateTimeZone = SovereignStateTimeZone.atlantic_standard_time
        let guamTime:SovereignStateTimeZone = SovereignStateTimeZone.guam_time
        switch self {
        case .alabama: return [cst, est]
        case .alaska: return [SovereignStateTimeZone.america_alaska_standard_time, hawaiiStandardTime]
        case .arkansas: return [cst]
        case .arizona: return [mountainStandardTime]
        case .california: return [pst]
        case .colorado: return [mountainStandardTime]
        case .connecticut: return [est]
        case .delaware: return [est]
        case .florida: return [est, cst]
        case .georgia: return [est]
        case .hawaii: return [hawaiiStandardTime]
        case .idaho: return [mountainStandardTime, pst]
        case .illinois: return [cst]
        case .indiana: return [est, cst]
        case .iowa: return [cst]
        case .kansas: return [cst, mountainStandardTime]
        case .kentucky: return [est, cst]
        case .louisiana: return [cst]
        case .maine: return [est]
        case .maryland: return [est]
        case .massachusetts: return [est]
        case .michigan: return [est, cst]
        case .minnesota: return [cst]
        case .mississippi: return [cst]
        case .missouri: return [cst]
        case .montana: return [mountainStandardTime]
        case .nebraska: return [cst, mountainStandardTime]
        case .nevada: return [pst, mountainStandardTime]
        case .new_hampshire: return [est]
        case .new_jersey: return [est]
        case .new_mexico: return [mountainStandardTime, cst]
        case .new_york: return [est]
        case .north_carolina: return [est]
        case .north_dakota: return [cst, mountainStandardTime]
        case .ohio: return [est]
        case .oklahoma: return [cst, mountainStandardTime]
        case .oregon: return [pst, mountainStandardTime]
        case .pennsylvania: return [est]
        case .rhode_island: return [est]
        case .south_carolina: return [est]
        case .south_dakota: return [cst, mountainStandardTime]
        case .tennessee: return [est, cst]
        case .texas: return [cst, mountainStandardTime]
        case .utah: return [mountainStandardTime]
        case .vermont: return [est]
        case .virginia: return [est]
        case .washington: return [pst]
        case .west_virginia: return [est]
        case .wisconsin: return [cst]
        case .wyoming: return [mountainStandardTime]
            
        case .washington_dc: return [est]
        case .united_states_virgin_islands: return [atlanticStandardTime]
            
        case .american_samoa: return [SovereignStateTimeZone.samoa_west_standard_time]
        case .puerto_rico: return [atlanticStandardTime]
        case .guam: return [guamTime]
        case .northern_mariana_islands: return [guamTime]
            
        case .marshall_islands: return [SovereignStateTimeZone.marshall_islands]
        case .micronesia: return [SovereignStateTimeZone.pohnpei_time]
        case .palau: return [SovereignStateTimeZone.palau_time]
        }
    }
    
    public var neighbors : [any SovereignStateSubdivision]? {
        switch self {
        case .arizona:
            return [
                SubdivisionsUnitedStates.nevada, SubdivisionsUnitedStates.utah, SubdivisionsUnitedStates.colorado, SubdivisionsUnitedStates.new_mexico, SubdivisionsUnitedStates.california,
                SubdivisionsMexico.sonora
            ]
        case .arkansas: return [SubdivisionsUnitedStates.missouri, SubdivisionsUnitedStates.tennessee, SubdivisionsUnitedStates.mississippi, SubdivisionsUnitedStates.louisiana, SubdivisionsUnitedStates.texas, SubdivisionsUnitedStates.oklahoma]
        case .alabama: return [SubdivisionsUnitedStates.tennessee, SubdivisionsUnitedStates.georgia, SubdivisionsUnitedStates.florida, SubdivisionsUnitedStates.mississippi]
        case .alaska: return [SubdivisionsCanada.yukon, SubdivisionsCanada.british_columbia]
        case .california:
            return [
                SubdivisionsUnitedStates.oregon, SubdivisionsUnitedStates.nevada, SubdivisionsUnitedStates.arizona,
                SubdivisionsMexico.baja_california
            ]
        case .colorado: return [SubdivisionsUnitedStates.wyoming, SubdivisionsUnitedStates.nebraska, SubdivisionsUnitedStates.kansas, SubdivisionsUnitedStates.oklahoma, SubdivisionsUnitedStates.new_mexico, SubdivisionsUnitedStates.arizona, SubdivisionsUnitedStates.utah]
        case .connecticut: return [SubdivisionsUnitedStates.massachusetts, SubdivisionsUnitedStates.rhode_island, SubdivisionsUnitedStates.new_york]
        case .delaware: return [SubdivisionsUnitedStates.pennsylvania, SubdivisionsUnitedStates.new_jersey, SubdivisionsUnitedStates.maryland]
        case .kansas: return [SubdivisionsUnitedStates.nebraska, SubdivisionsUnitedStates.missouri, SubdivisionsUnitedStates.oklahoma, SubdivisionsUnitedStates.colorado]
        case .florida: return [SubdivisionsUnitedStates.alabama, SubdivisionsUnitedStates.georgia]
        case .georgia: return [SubdivisionsUnitedStates.tennessee, SubdivisionsUnitedStates.north_carolina, SubdivisionsUnitedStates.south_carolina, SubdivisionsUnitedStates.florida, SubdivisionsUnitedStates.alabama]
        case .idaho:
            return [
                SubdivisionsUnitedStates.montana, SubdivisionsUnitedStates.wyoming, SubdivisionsUnitedStates.utah, SubdivisionsUnitedStates.nevada, SubdivisionsUnitedStates.oregon, SubdivisionsUnitedStates.washington,
                SubdivisionsCanada.british_columbia
            ]
        case .illinois: return [SubdivisionsUnitedStates.wisconsin, SubdivisionsUnitedStates.michigan, SubdivisionsUnitedStates.indiana, SubdivisionsUnitedStates.kentucky, SubdivisionsUnitedStates.missouri, SubdivisionsUnitedStates.iowa]
        case .indiana: return [SubdivisionsUnitedStates.illinois, SubdivisionsUnitedStates.michigan, SubdivisionsUnitedStates.ohio, SubdivisionsUnitedStates.kentucky]
        case .iowa: return [SubdivisionsUnitedStates.minnesota, SubdivisionsUnitedStates.wisconsin, SubdivisionsUnitedStates.illinois, SubdivisionsUnitedStates.missouri, SubdivisionsUnitedStates.nebraska, SubdivisionsUnitedStates.south_dakota]
        case .kentucky: return [SubdivisionsUnitedStates.illinois, SubdivisionsUnitedStates.indiana, SubdivisionsUnitedStates.ohio, SubdivisionsUnitedStates.west_virginia, SubdivisionsUnitedStates.virginia, SubdivisionsUnitedStates.tennessee, SubdivisionsUnitedStates.missouri]
        case .louisiana: return [SubdivisionsUnitedStates.arkansas, SubdivisionsUnitedStates.mississippi, SubdivisionsUnitedStates.texas]
        case .maine:
            return [
                SubdivisionsUnitedStates.new_hampshire,
                SubdivisionsCanada.quebec, SubdivisionsCanada.new_brunswick
            ]
        case .maryland: return [SubdivisionsUnitedStates.pennsylvania, SubdivisionsUnitedStates.delaware, SubdivisionsUnitedStates.virginia, SubdivisionsUnitedStates.west_virginia]
        case .massachusetts: return [SubdivisionsUnitedStates.vermont, SubdivisionsUnitedStates.new_hampshire, SubdivisionsUnitedStates.rhode_island, SubdivisionsUnitedStates.connecticut, SubdivisionsUnitedStates.new_york]
        case .michigan:
            return [
                SubdivisionsUnitedStates.ohio, SubdivisionsUnitedStates.indiana, SubdivisionsUnitedStates.illinois, SubdivisionsUnitedStates.wisconsin, SubdivisionsUnitedStates.minnesota,
                SubdivisionsCanada.ontario
            ]
        case .minnesota:
            return [
                SubdivisionsUnitedStates.michigan, SubdivisionsUnitedStates.wisconsin, SubdivisionsUnitedStates.iowa, SubdivisionsUnitedStates.south_dakota, SubdivisionsUnitedStates.north_dakota,
                SubdivisionsCanada.manitoba, SubdivisionsCanada.ontario
            ]
        case .mississippi: return [SubdivisionsUnitedStates.arkansas, SubdivisionsUnitedStates.tennessee, SubdivisionsUnitedStates.alabama, SubdivisionsUnitedStates.louisiana]
        case .missouri: return [SubdivisionsUnitedStates.iowa, SubdivisionsUnitedStates.illinois, SubdivisionsUnitedStates.kentucky, SubdivisionsUnitedStates.tennessee, SubdivisionsUnitedStates.arkansas, SubdivisionsUnitedStates.oklahoma, SubdivisionsUnitedStates.kansas, SubdivisionsUnitedStates.nebraska]
        case .montana:
            return [
                SubdivisionsUnitedStates.north_dakota, SubdivisionsUnitedStates.south_dakota, SubdivisionsUnitedStates.wyoming, SubdivisionsUnitedStates.idaho,
                SubdivisionsCanada.british_columbia, SubdivisionsCanada.alberta, SubdivisionsCanada.saskatchewan
            ]
        case .nebraska: return [SubdivisionsUnitedStates.south_dakota, SubdivisionsUnitedStates.iowa, SubdivisionsUnitedStates.missouri, SubdivisionsUnitedStates.kansas, SubdivisionsUnitedStates.colorado, SubdivisionsUnitedStates.wyoming]
        case .nevada: return [SubdivisionsUnitedStates.oregon, SubdivisionsUnitedStates.idaho, SubdivisionsUnitedStates.utah, SubdivisionsUnitedStates.arizona, SubdivisionsUnitedStates.california]
        case .new_jersey: return [SubdivisionsUnitedStates.new_york, SubdivisionsUnitedStates.delaware, SubdivisionsUnitedStates.pennsylvania]
        case .new_mexico:
            return [
                SubdivisionsUnitedStates.colorado, SubdivisionsUnitedStates.oklahoma, SubdivisionsUnitedStates.texas, SubdivisionsUnitedStates.arizona, SubdivisionsUnitedStates.utah,
                SubdivisionsMexico.chihuahua, SubdivisionsMexico.sonora
            ]
        case .new_hampshire:
            return [
                SubdivisionsUnitedStates.maine, SubdivisionsUnitedStates.massachusetts, SubdivisionsUnitedStates.vermont,
                SubdivisionsCanada.quebec
            ]
        case .new_york:
            return [
                SubdivisionsUnitedStates.vermont, SubdivisionsUnitedStates.massachusetts, SubdivisionsUnitedStates.connecticut, SubdivisionsUnitedStates.new_jersey, SubdivisionsUnitedStates.pennsylvania,
                SubdivisionsCanada.ontario
            ]
        case .north_carolina: return [SubdivisionsUnitedStates.virginia, SubdivisionsUnitedStates.south_carolina, SubdivisionsUnitedStates.georgia, SubdivisionsUnitedStates.tennessee]
        case .north_dakota:
            return [
                SubdivisionsUnitedStates.minnesota, SubdivisionsUnitedStates.south_dakota, SubdivisionsUnitedStates.montana,
                SubdivisionsCanada.saskatchewan, SubdivisionsCanada.manitoba
            ]
        case .ohio:
            return [
                SubdivisionsUnitedStates.michigan, SubdivisionsUnitedStates.pennsylvania, SubdivisionsUnitedStates.west_virginia, SubdivisionsUnitedStates.kentucky, SubdivisionsUnitedStates.indiana,
                SubdivisionsCanada.ontario
            ]
        case .oklahoma: return [SubdivisionsUnitedStates.colorado, SubdivisionsUnitedStates.kansas, SubdivisionsUnitedStates.missouri, SubdivisionsUnitedStates.arkansas, SubdivisionsUnitedStates.texas, SubdivisionsUnitedStates.new_mexico]
        case .oregon: return [SubdivisionsUnitedStates.washington, SubdivisionsUnitedStates.idaho, SubdivisionsUnitedStates.nevada, SubdivisionsUnitedStates.california]
        case .pennsylvania:
            return [
                SubdivisionsUnitedStates.new_york, SubdivisionsUnitedStates.new_jersey, SubdivisionsUnitedStates.delaware, SubdivisionsUnitedStates.maryland, SubdivisionsUnitedStates.west_virginia, SubdivisionsUnitedStates.ohio,
                SubdivisionsCanada.ontario
            ]
        case .rhode_island: return [SubdivisionsUnitedStates.massachusetts, SubdivisionsUnitedStates.connecticut]
        case .south_carolina: return [SubdivisionsUnitedStates.north_carolina, SubdivisionsUnitedStates.georgia]
        case .south_dakota: return [SubdivisionsUnitedStates.north_dakota, SubdivisionsUnitedStates.minnesota, SubdivisionsUnitedStates.iowa, SubdivisionsUnitedStates.nebraska, SubdivisionsUnitedStates.wyoming, SubdivisionsUnitedStates.montana]
        case .tennessee: return [SubdivisionsUnitedStates.kentucky, SubdivisionsUnitedStates.virginia, SubdivisionsUnitedStates.north_carolina, SubdivisionsUnitedStates.georgia, SubdivisionsUnitedStates.alabama, SubdivisionsUnitedStates.mississippi, SubdivisionsUnitedStates.arkansas, SubdivisionsUnitedStates.missouri]
        case .texas:
            return [
                SubdivisionsUnitedStates.new_mexico, SubdivisionsUnitedStates.oklahoma, SubdivisionsUnitedStates.arkansas, SubdivisionsUnitedStates.louisiana,
                SubdivisionsMexico.tamaulipas, SubdivisionsMexico.coahuila, SubdivisionsMexico.chihuahua
            ]
        case .utah: return [SubdivisionsUnitedStates.idaho, SubdivisionsUnitedStates.wyoming, SubdivisionsUnitedStates.colorado, SubdivisionsUnitedStates.new_mexico, SubdivisionsUnitedStates.arizona, SubdivisionsUnitedStates.nevada]
        case .vermont:
            return [
                SubdivisionsUnitedStates.new_hampshire, SubdivisionsUnitedStates.massachusetts, SubdivisionsUnitedStates.new_york,
                SubdivisionsCanada.quebec
            ]
        case .virginia: return [SubdivisionsUnitedStates.kentucky, SubdivisionsUnitedStates.west_virginia, SubdivisionsUnitedStates.maryland, SubdivisionsUnitedStates.north_carolina, SubdivisionsUnitedStates.tennessee]
        case .washington:
            return [
                SubdivisionsUnitedStates.idaho, SubdivisionsUnitedStates.oregon,
                SubdivisionsCanada.british_columbia
            ]
        case .west_virginia: return [SubdivisionsUnitedStates.ohio, SubdivisionsUnitedStates.pennsylvania, SubdivisionsUnitedStates.maryland, SubdivisionsUnitedStates.virginia, SubdivisionsUnitedStates.kentucky]
        case .wisconsin: return [SubdivisionsUnitedStates.minnesota, SubdivisionsUnitedStates.michigan, SubdivisionsUnitedStates.illinois, SubdivisionsUnitedStates.iowa]
        case .wyoming: return [SubdivisionsUnitedStates.montana, SubdivisionsUnitedStates.south_dakota, SubdivisionsUnitedStates.nebraska, SubdivisionsUnitedStates.colorado, SubdivisionsUnitedStates.utah, SubdivisionsUnitedStates.idaho]
        default: return nil
        }
    }
    
    public var counties_type : (any SovereignStateLevel2Division.Type)? {
        switch self {
        case .alabama: return CountiesUnitedStatesAlabama.self
        case .alaska: return CountiesUnitedStatesAlaska.self
        case .arizona: return CountiesUnitedStatesArizona.self
        case .arkansas: return CountiesUnitedStatesArkansas.self
        case .california: return CountiesUnitedStatesCalifornia.self
        case .colorado: return CountiesUnitedStatesColorado.self
        case .connecticut: return CountiesUnitedStatesConnecticut.self
        case .delaware: return CountiesUnitedStatesDelaware.self
        case .florida: return CountiesUnitedStatesFlorida.self
        case .georgia: return CountiesUnitedStatesGeorgia.self
        case .hawaii: return CountiesUnitedStatesHawaii.self
        case .idaho: return CountiesUnitedStatesIdaho.self
        case .illinois: return CountiesUnitedStatesIllinois.self
        case .indiana: return CountiesUnitedStatesIndiana.self
        case .iowa: return CountiesUnitedStatesIowa.self
        case .kansas: return CountiesUnitedStatesKansas.self
        case .kentucky: return CountiesUnitedStatesKentucky.self
        case .louisiana: return CountiesUnitedStatesLouisiana.self
        case .maine: return CountiesUnitedStatesMaine.self
        case .maryland: return CountiesUnitedStatesMaryland.self
        case .massachusetts: return CountiesUnitedStatesMassachusetts.self
        case .michigan: return CountiesUnitedStatesMichigan.self
        case .minnesota: return CountiesUnitedStatesMinnesota.self
        case .mississippi: return CountiesUnitedStatesMississippi.self
        case .missouri: return CountiesUnitedStatesMissouri.self
        case .montana: return CountiesUnitedStatesMontana.self
        case .nebraska: return CountiesUnitedStatesNebraska.self
        case .nevada: return CountiesUnitedStatesNevada.self
        case .new_hampshire: return CountiesUnitedStatesNewHampshire.self
        case .new_jersey: return CountiesUnitedStatesNewJersey.self
        case .new_mexico: return CountiesUnitedStatesNewMexico.self
        case .new_york: return CountiesUnitedStatesNewYork.self
        case .north_carolina: return CountiesUnitedStatesNorthCarolina.self
        case .north_dakota: return CountiesUnitedStatesNorthDakota.self
        case .ohio: return CountiesUnitedStatesOhio.self
        case .oklahoma: return CountiesUnitedStatesOklahoma.self
        case .oregon: return CountiesUnitedStatesOregon.self
        case .pennsylvania: return CountiesUnitedStatesPennsylvania.self
        case .rhode_island: return CountiesUnitedStatesRhodeIsland.self
        case .south_carolina: return CountiesUnitedStatesSouthCarolina.self
        case .south_dakota: return CountiesUnitedStatesSouthDakota.self
        case .tennessee: return CountiesUnitedStatesTennessee.self
        case .texas: return CountiesUnitedStatesTexas.self
        case .utah: return CountiesUnitedStatesUtah.self
        case .vermont: return CountiesUnitedStatesVermont.self
        case .virginia: return CountiesUnitedStatesVirginia.self
        case .washington: return CountiesUnitedStatesWashington.self
        case .west_virginia: return CountiesUnitedStatesWestVirginia.self
        case .wisconsin: return CountiesUnitedStatesWisconsin.self
        case .wyoming: return CountiesUnitedStatesWyoming.self
        default: return nil
        }
    }
    public var counties : [any SovereignStateLevel2Division]? {
        switch self {
        case .alabama: return CountiesUnitedStatesAlabama.allCases
        case .alaska: return CountiesUnitedStatesAlaska.allCases
        case .arizona: return CountiesUnitedStatesArizona.allCases
        case .arkansas: return CountiesUnitedStatesArkansas.allCases
        case .california: return CountiesUnitedStatesCalifornia.allCases
        case .colorado: return CountiesUnitedStatesColorado.allCases
        case .connecticut: return CountiesUnitedStatesConnecticut.allCases
        case .delaware: return CountiesUnitedStatesDelaware.allCases
        case .florida: return CountiesUnitedStatesFlorida.allCases
        case .georgia: return CountiesUnitedStatesGeorgia.allCases
        case .hawaii: return CountiesUnitedStatesHawaii.allCases
        case .idaho: return CountiesUnitedStatesIdaho.allCases
        case .illinois: return CountiesUnitedStatesIllinois.allCases
        case .indiana: return CountiesUnitedStatesIndiana.allCases
        case .iowa: return CountiesUnitedStatesIowa.allCases
        case .kansas: return CountiesUnitedStatesKansas.allCases
        case .kentucky: return CountiesUnitedStatesKentucky.allCases
        case .louisiana: return CountiesUnitedStatesLouisiana.allCases
        case .maine: return CountiesUnitedStatesMaine.allCases
        case .maryland: return CountiesUnitedStatesMaryland.allCases
        case .massachusetts: return CountiesUnitedStatesMassachusetts.allCases
        case .michigan: return CountiesUnitedStatesMichigan.allCases
        case .minnesota: return CountiesUnitedStatesMinnesota.allCases
        case .mississippi: return CountiesUnitedStatesMississippi.allCases
        case .missouri: return CountiesUnitedStatesMissouri.allCases
        case .montana: return CountiesUnitedStatesMontana.allCases
        case .nebraska: return CountiesUnitedStatesNebraska.allCases
        case .nevada: return CountiesUnitedStatesNevada.allCases
        case .new_hampshire: return CountiesUnitedStatesNewHampshire.allCases
        case .new_jersey: return CountiesUnitedStatesNewJersey.allCases
        case .new_mexico: return CountiesUnitedStatesNewMexico.allCases
        case .new_york: return CountiesUnitedStatesNewYork.allCases
        case .north_carolina: return CountiesUnitedStatesNorthCarolina.allCases
        case .north_dakota: return CountiesUnitedStatesNorthDakota.allCases
        case .ohio: return CountiesUnitedStatesOhio.allCases
        case .oklahoma: return CountiesUnitedStatesOklahoma.allCases
        case .oregon: return CountiesUnitedStatesOregon.allCases
        case .pennsylvania: return CountiesUnitedStatesPennsylvania.allCases
        case .rhode_island: return CountiesUnitedStatesRhodeIsland.allCases
        case .south_carolina: return CountiesUnitedStatesSouthCarolina.allCases
        case .south_dakota: return CountiesUnitedStatesSouthDakota.allCases
        case .tennessee: return CountiesUnitedStatesTennessee.allCases
        case .texas: return CountiesUnitedStatesTexas.allCases
        case .utah: return CountiesUnitedStatesUtah.allCases
        case .vermont: return CountiesUnitedStatesVermont.allCases
        case .virginia: return CountiesUnitedStatesVirginia.allCases
        case .washington: return CountiesUnitedStatesWashington.allCases
        case .west_virginia: return CountiesUnitedStatesWestVirginia.allCases
        case .wisconsin: return CountiesUnitedStatesWisconsin.allCases
        case .wyoming: return CountiesUnitedStatesWyoming.allCases
        default: return nil
        }
    }
    
    public var cities_type : (any SovereignStateCity.Type)? {
        switch self {
        case .alabama: return CitiesUnitedStatesAlabama.self
        case .arizona: return CitiesUnitedStatesArizona.self
        case .arkansas: return CitiesUnitedStatesArkansas.self
        case .idaho: return CitiesUnitedStatesIdaho.self
        case .iowa: return CitiesUnitedStatesIowa.self
        case .kentucky: return CitiesUnitedStatesKentucky.self
        case .maine: return CitiesUnitedStatesMaine.self
        case .minnesota: return CitiesUnitedStatesMinnesota.self
        case .montana: return CitiesUnitedStatesMontana.self
        case .new_hampshire: return CitiesUnitedStatesNewHampshire.self
        case .new_mexico: return CitiesUnitedStatesNewMexico.self
        case .north_dakota: return CitiesUnitedStatesNorthDakota.self
        case .south_dakota: return CitiesUnitedStatesSouthDakota.self
        case .ohio: return CitiesUnitedStatesOhio.self
        case .texas: return CitiesUnitedStatesTexas.self
        case .utah: return CitiesUnitedStatesUtah.self
        case .washington: return CitiesUnitedStatesWashington.self
        default: return nil
        }
    }
    public var cities : [any SovereignStateCity]? {
        switch self {
        case .alabama: return CitiesUnitedStatesAlabama.allCases
        case .arizona: return CitiesUnitedStatesArizona.allCases
        case .arkansas: return CitiesUnitedStatesArkansas.allCases
        case .idaho: return CitiesUnitedStatesIdaho.allCases
        case .iowa: return CitiesUnitedStatesIowa.allCases
        case .kentucky: return CitiesUnitedStatesKentucky.allCases
        case .maine: return CitiesUnitedStatesMaine.allCases
        case .minnesota: return CitiesUnitedStatesMinnesota.allCases
        case .montana: return CitiesUnitedStatesMontana.allCases
        case .new_hampshire: return CitiesUnitedStatesNewHampshire.allCases
        case .new_mexico: return CitiesUnitedStatesNewMexico.allCases
        case .north_dakota: return CitiesUnitedStatesNorthDakota.allCases
        case .south_dakota: return CitiesUnitedStatesSouthDakota.allCases
        case .ohio: return CitiesUnitedStatesOhio.allCases
        case .texas: return CitiesUnitedStatesTexas.allCases
        case .utah: return CitiesUnitedStatesUtah.allCases
        case .washington: return CitiesUnitedStatesWashington.allCases
        default: return nil
        }
    }
}
