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
    
    public func getCountry() -> Country {
        return Country.united_states
    }
    
    public func getDefaultType() -> SovereignStateSubdivisionType {
        return SovereignStateSubdivisionType.states
    }
    
    public func getType() -> SovereignStateSubdivisionType? {
        switch self {
        case .american_samoa,
                .puerto_rico,
                .guam,
                .northern_mariana_islands,
                .united_states_virgin_islands:
            return .territories
        case .washington_dc:
            return .federal_districts
        case .marshall_islands,
                .micronesia,
                .palau:
            return .freely_associated_states
        default:
            return nil
        }
    }
    
    public func getRealName() -> String? {
        switch self {
        case .washington_dc: return "Washington, D.C."
        default: return nil
        }
    }
    
    public func getWikipediaURLSuffix(typeSuffix: String) -> String? {
        switch self {
        case .georgia: return "(U.S._" + typeSuffix.lowercased() + ")"
        case .new_york,
                .washington:
            return "(" + typeSuffix.lowercased() + ")"
        default:
            return ""
        }
    }
    
    public func getISOAlpha2() -> String? {
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

        case .american_samoa: return Country.american_samoa.getISOAlpha2()
        case .puerto_rico: return Country.puerto_rico.getISOAlpha2()
        case .guam: return Country.guam.getISOAlpha2()
        case .northern_mariana_islands: return Country.northern_mariana_islands.getISOAlpha2()
            
        case .marshall_islands: return Country.marshall_islands.getISOAlpha2()
        case .micronesia: return Country.micronesia.getISOAlpha2()
        case .palau: return Country.palau.getISOAlpha2()
        }
    }
    
    public func getGovernmentWebsite() -> String? {
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
        case .marshall_islands: return Country.marshall_islands.getGovernmentWebsite()
        case .micronesia: return Country.micronesia.getGovernmentWebsite()
        case .palau: return Country.palau.getGovernmentWebsite()
        default:
            guard let isoAlpha2:String = getISOAlpha2() else { return nil }
            return "https://" + isoAlpha2 + ".gov"
        }
    }
    
    public func getFlagURLWikipediaSVGID() -> String? {
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
    
    public func getTimeZones() -> [SovereignStateTimeZone]? {
        let centralStandardTime:SovereignStateTimeZone = SovereignStateTimeZone.america_central_standard_time
        let easternStandardTime:SovereignStateTimeZone = SovereignStateTimeZone.america_eastern_standard_time
        let hawaiiStandardTime:SovereignStateTimeZone = SovereignStateTimeZone.america_hawaii_standard_time
        let mountainStandardTime:SovereignStateTimeZone = SovereignStateTimeZone.america_mountain_standard_time
        let pacificStandardTime:SovereignStateTimeZone = SovereignStateTimeZone.america_pacific_standard_time
        let atlanticStandardTime:SovereignStateTimeZone = SovereignStateTimeZone.atlantic_standard_time
        let guamTime:SovereignStateTimeZone = SovereignStateTimeZone.guam_time
        switch self {
        case .alabama: return [centralStandardTime, easternStandardTime]
        case .alaska: return [SovereignStateTimeZone.america_alaska_standard_time, hawaiiStandardTime]
        case .arkansas: return [centralStandardTime]
        case .arizona: return [mountainStandardTime]
        case .california: return [pacificStandardTime]
        case .colorado: return [mountainStandardTime]
        case .connecticut: return [easternStandardTime]
        case .delaware: return [easternStandardTime]
        case .florida: return [easternStandardTime, centralStandardTime]
        case .georgia: return [easternStandardTime]
        case .hawaii: return [hawaiiStandardTime]
        case .idaho: return [mountainStandardTime, pacificStandardTime]
        case .illinois: return [centralStandardTime]
        case .indiana: return [easternStandardTime, centralStandardTime]
        case .iowa: return [centralStandardTime]
        case .kansas: return [centralStandardTime, mountainStandardTime]
        case .kentucky: return [easternStandardTime, centralStandardTime]
        case .louisiana: return [centralStandardTime]
        case .maine: return [easternStandardTime]
        case .maryland: return [easternStandardTime]
        case .massachusetts: return [easternStandardTime]
        case .michigan: return [easternStandardTime, centralStandardTime]
        case .minnesota: return [centralStandardTime]
        case .mississippi: return [centralStandardTime]
        case .missouri: return [centralStandardTime]
        case .montana: return [mountainStandardTime]
        case .nebraska: return [centralStandardTime, mountainStandardTime]
        case .nevada: return [pacificStandardTime, mountainStandardTime]
        case .new_hampshire: return [easternStandardTime]
        case .new_jersey: return [easternStandardTime]
        case .new_mexico: return [mountainStandardTime, centralStandardTime]
        case .new_york: return [easternStandardTime]
        case .north_carolina: return [easternStandardTime]
        case .north_dakota: return [centralStandardTime, mountainStandardTime]
        case .ohio: return [easternStandardTime]
        case .oklahoma: return [centralStandardTime, mountainStandardTime]
        case .oregon: return [pacificStandardTime, mountainStandardTime]
        case .pennsylvania: return [easternStandardTime]
        case .rhode_island: return [easternStandardTime]
        case .south_carolina: return [easternStandardTime]
        case .south_dakota: return [centralStandardTime, mountainStandardTime]
        case .tennessee: return [easternStandardTime, centralStandardTime]
        case .texas: return [centralStandardTime, mountainStandardTime]
        case .utah: return [mountainStandardTime]
        case .vermont: return [easternStandardTime]
        case .virginia: return [easternStandardTime]
        case .washington: return [pacificStandardTime]
        case .west_virginia: return [easternStandardTime]
        case .wisconsin: return [centralStandardTime]
        case .wyoming: return [mountainStandardTime]
            
        case .washington_dc: return [easternStandardTime]
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
    
    func returnNeighbors() -> [Any]? {
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
}
