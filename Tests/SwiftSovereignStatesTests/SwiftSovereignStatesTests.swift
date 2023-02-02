import XCTest
import SwiftSovereignStates
import QuartzCore

final class SwiftSovereignStatesTests: XCTestCase {
    func testExample() async throws {
        let _:[[String]] = Country.allCases.map({ $0.keywords })
        let _:[[String]] = SovereignStateSubdivisions.all.map({ $0.keywords })
        let _:[[String]] = SovereignStateCities.all.map({ $0.keywords })
        
        let cache:Bool = true
        print("SwiftSovereignStatesTests;testExample;cache=" + cache.description)
        if #available(macOS 13.0, *) {
            /*try await benchmark(key: "Country.init(_ description) [LosslessStringConvertible]") {
                let _:Country? = Country.init("united_states")
            }
            try await benchmark(key: "Country.init(rawValue) [RawRepresentable]") {
                let _:Country? = Country.init(rawValue: "united_states")
            }*/
            
            /*try await benchmark(key: "SovereignStateSubdivisions.valueOf") {
                let _:[any SovereignStateSubdivision]? = SovereignStateSubdivisions.valueOf("Minnesota", cache: cache)
            }*/
            /*try await benchmark(key: "SovereignStateSubdivisions.getAllMentionedParallel") {
                let _:[any SovereignStateSubdivision]? = await SovereignStateSubdivisions.getAllMentionedParallel("Wisconsin! Baku? (Limburg) Buenos Aires's, Zabul", cache: cache)
            }
            try await benchmark(key: "SovereignStateSubdivisions.getAllMentioned") {
                let _:[any SovereignStateSubdivision]? = SovereignStateSubdivisions.getAllMentioned("Minnesota! Baku? (Limburg) Buenos Aires's, Zabul", cache: cache)
            }*/
            
            /*try await benchmark(key: "SovereignStateSubdivisions.valueOfCacheID") {
                let _:(any SovereignStateSubdivision)? = SovereignStateSubdivisions.valueOfCacheID("united_states_minnesota", cache: cache)
            }
            try await benchmark(key: "SovereignStateSubdivisions.valueOfCacheID_v2") {
                let _:(any SovereignStateSubdivision)? = SovereignStateSubdivisions.valueOfCacheID_v2("united_states_minnesota")
            }*/
            
            /*try await benchmark(key: "SovereignStateCities.valueOfIdentifier") {
                let _:(any SovereignStateCity)? = SubdivisionsUnitedStates.minnesota.valueOfCityIdentifier("united_states_minnesota_kasson")
            }
            try await benchmark(key: "SovereignStateCities.valueOf") {
                let _:[any SovereignStateCity]? = SovereignStateCities.valueOf("Rochester", cache: cache, ignoreCase: false)
            }
            try await benchmark(key: "SovereignStateCities.getAllMentionedParallel") {
                let _:[any SovereignStateCity]? = await SovereignStateCities.getAllMentionedParallel("Kasson! Minneapolis? (Dodge Center) Owatonna's, Dallas, Lakeside; Kansas City, Alpine.", cache: cache)
            }
            try await benchmark(key: "SovereignStateCities.getAllMentioned") {
                let _:[any SovereignStateCity]? = SovereignStateCities.getAllMentioned("Rochester! Minneapolis? (Dodge Center) Owatonna's, Dallas, Lakeside; Kansas City, Alpine.", cache: cache)
            }
            try await benchmark(key: "SovereignStateCities.valueOfCacheID") {
                let _:(any SovereignStateCity)? = SovereignStateCities.valueOfCacheID("united_states_minnesota_kasson", cache: cache)
            }*/
            
        } else {
            print("SwiftSovereignStatesTests;failed to execute benchmarks due to outdated macOS version (less than 13.0)")
        }
        /*measure {
            //let _:[any SovereignStateSubdivision]? = SovereignStateSubdivisions.getAllMentioned("Minnesota! Baja California, California? (Wisconsin) Texas's, Maine, New York; Kentucky.", cache: false)
            //let _:[any SovereignStateSubdivision]? = SovereignStateSubdivisions.valueOf("Minnesota", cache: false)
            
            //let _:[any SovereignStateCity]? = SovereignStateCities.getAllMentioned("Kasson! Minneapolis? (Dodge Center) Owatonna's, Dallas, Lakeside; Kansas City, Alpine.", cache: false)
            let _:[any SovereignStateCity]? = SovereignStateCities.valueOf("Kasson", cache: false)
            //let _:Country? = Country.valueOfIdentifier("united_states")
        }*/
        
        try testFoundations()
        try testCodable()
        testWikipediaURLs()
        testCountryMentions()
        testSubdivisionMentions()
        testCityMentions()
        testNeighbors()
        testCities()
        
        generate_english_localization()
        test_localization(language: "en")
        
        //let seconds:UInt64 = 500_000_000
        //try await validateCountryWikipediaURLs(seconds)
        //try await validateSubdivisionWikipediaURLs(seconds)
        //try await validateCityWikipediaURLs(seconds)
    }
    
    @available(macOS 13.0, *)
    private func benchmark(key: String, _ code: @escaping () async throws -> Void) async throws {
        let iteration_count:Int = 10_000
        let clock:ContinuousClock = ContinuousClock()
        let _:Duration = try await clock.measure(code)
        var timings:[Int64] = [Int64]()
        timings.reserveCapacity(iteration_count)
        for _ in 1...iteration_count {
            let result:Duration = try await clock.measure(code)
            let attoseconds:Int64 = result.components.attoseconds
            let nanoseconds:Int64 = attoseconds / 1_000_000_000
            timings.append(nanoseconds)
        }
        timings = timings.sorted(by: { $0 < $1 })
        let median:Int64 = timings[timings.count/2]
        let sum:Int64 = timings.reduce(0, +)
        let average:Double = Double(sum) / Double(timings.count)
        let key:String = key + (1...(65-key.count)).map({ _ in " " }).joined()
        
        let formatter:NumberFormatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 20
        
        let average_time_elapsed:String = formatter.string(for: average)! + "ns"
        let minimum_time_elapsed:String = formatter.string(for: timings.first!)! + "ns"
        let maximum_time_elapsed:String = formatter.string(for: timings.last!)! + "ns"
        let median_time_elapsed:String = formatter.string(for: median)! + "ns"
        let total_time_elapsed:String = formatter.string(for: sum)! + "ns"
        
        print("SwiftSovereignStates;benchmark( " + key + "| min=" + minimum_time_elapsed + " | max=" + maximum_time_elapsed + " | median=" + median_time_elapsed + " | average=" + average_time_elapsed + " | total=" + total_time_elapsed)
    }
    
    private func testFoundations() throws {
        let unitedStates:Country = Country.united_states
        XCTAssert(unitedStates.rawValue.elementsEqual("united_states"))
        XCTAssert(unitedStates.cache_id.elementsEqual("united_states"))
        let minnesota:any SovereignStateSubdivision = SubdivisionsUnitedStates.minnesota
        XCTAssert(minnesota.rawValue.elementsEqual("minnesota"))
        XCTAssert(minnesota.cache_id.elementsEqual("united_states_minnesota"))
        XCTAssert(minnesota.country == unitedStates)
        XCTAssert(SubdivisionsAfghanistan.badakhshan.country == Country.afghanistan)
        let kasson:any SovereignStateCity = CitiesUnitedStatesMinnesota.kasson
        XCTAssert(kasson.rawValue.elementsEqual("kasson"))
        XCTAssert(kasson.cache_id.elementsEqual("united_states_minnesota_kasson"))
        
        XCTAssert(Country.valueOf("") == nil)
        XCTAssert(Country.init("") == nil)
        XCTAssert(Country.getAllMentioned("") == nil)
        XCTAssert(SovereignStateSubdivisions.valueOf("") == nil)
        XCTAssert(SovereignStateSubdivisions.valueOfCacheID("") == nil)
        XCTAssert(SovereignStateSubdivisions.getAllMentioned("") == nil)
        XCTAssert(SovereignStateCities.valueOf("", ignoreCase: false) == nil)
        XCTAssert(SovereignStateCities.valueOfCacheID("") == nil)
        XCTAssert(SovereignStateCities.getAllMentioned("") == nil)
        
        let test2:(any SovereignStateSubdivision)? = unitedStates.valueOfSubdivision("Minnesota")
        let equalMinnesotas:Bool = minnesota.isEqual(test2)
        XCTAssert(equalMinnesotas)
        
        let encoder:JSONEncoder = JSONEncoder()
        let wrapper:TestEncodableStruct = TestEncodableStruct(country: Country.united_states, subdivision: SubdivisionsUnitedStates.minnesota, city: CitiesUnitedStatesMinnesota.kasson)
        let wrapper_data:Data = try encoder.encode(wrapper)
        let wrapper_string:String = String(data: wrapper_data, encoding: .utf8)!
        let expected_string:String = """
{"country":"united_states","subdivision":"united_states_minnesota","city":"united_states_minnesota_kasson"}
"""
        XCTAssert(expected_string.elementsEqual(wrapper_string), "wrapper_string=" + wrapper_string)
    }
    private func testCodable() throws {
        let unitedStates:Country = Country.united_states
        let encoded:Data = try JSONEncoder().encode(unitedStates)
        let encodedString:String = String(data: encoded, encoding: .utf8)!
        let targetString:String = "\"" + unitedStates.cache_id + "\""
        XCTAssert(encodedString.elementsEqual(targetString), encodedString + " != " + targetString)
        
        let decoded:Country = try JSONDecoder().decode(Country.self, from: encoded)
        XCTAssert(unitedStates == decoded)
        
        let subdivision:SubdivisionsUnitedStates = SubdivisionsUnitedStates.wisconsin
        let city:CitiesUnitedStatesMinnesota = CitiesUnitedStatesMinnesota.rochester
        let test:TestEncodableStruct = TestEncodableStruct(country: unitedStates, subdivision: subdivision, city: city)
        let encodedTest:Data = try JSONEncoder().encode(test)
        let encodedStringTest:String = String(data: encodedTest, encoding: .utf8)!
        let targetStringTest:String = "{\"country\":\"" + unitedStates.cache_id + "\",\"subdivision\":\"" + subdivision.cache_id + "\",\"city\":\"" + city.cache_id + "\"}"
        XCTAssert(encodedStringTest.elementsEqual(targetStringTest), encodedStringTest + " != " + targetStringTest)
        
        let decodedTest:TestDecodableStruct = try JSONDecoder().decode(TestDecodableStruct.self, from: encodedTest)
        XCTAssert(unitedStates == decodedTest.country)
        XCTAssert(subdivision.isEqual(decodedTest.subdivision))
        XCTAssert(city.isEqual(decodedTest.city))
    }
    private func testWikipediaURLs() {
        var failedSubdivisions:[any SovereignStateSubdivision] = [any SovereignStateSubdivision]()
        var failedCities:[any SovereignStateCity] = [any SovereignStateCity]()
        for country in Country.allCases {
            if let subdivisions:[any SovereignStateSubdivision] = country.getSubdivisions() {
                for subdivision in subdivisions {
                    let subdivisionWikipediaURL:String = subdivision.getWikipediaURL()
                    if subdivisionWikipediaURL.contains(" ") {
                        failedSubdivisions.append(subdivision)
                    }
                    if let cities:[any SovereignStateCity] = subdivision.cities {
                        for city in cities {
                            let cityWikipediaURL:String = city.getWikipediaURL()
                            if cityWikipediaURL.contains(" ") {
                                failedCities.append(city)
                            }
                        }
                    }
                }
            }
        }
        
        if failedSubdivisions.count > 0 {
            print("SwiftSovereignStatesTests;testWikipediaURLs;failedSubdivisions=" + failedSubdivisions.count.description)
            for subdivision in failedSubdivisions {
                let country:Country = subdivision.country
                print("SwiftSovereignStatesTests;testWikipediaURLs;failedSubdivisions;" + country.rawValue + ";" + subdivision.rawValue + ";wikipediaURL=" + subdivision.getWikipediaURL())
            }
        }
        XCTAssert(failedSubdivisions.count == 0)
        
        if failedCities.count > 0 {
            print("SwiftSovereignStatesTests;testWikipediaURLs;failedCities=" + failedCities.count.description)
            for city in failedCities {
                let subdivision = city.subdivision
                let country:Country = subdivision.country
                print("SwiftSovereignStatesTests;testWikipediaURLs;failedCities;" + country.rawValue + ";" + subdivision.rawValue + ";" + city.rawValue + ";wikipediaURL=" + subdivision.getWikipediaURL())
            }
        }
    }
    private func validateCountryWikipediaURLs(_ seconds: UInt64) async throws {
        for country in Country.allCases {
            await verifyWikipediaURL(country)
            try await Task.sleep(nanoseconds: seconds)
        }
    }
    private func validateSubdivisionWikipediaURLs(_ seconds: UInt64) async throws {
        for subdivision in SovereignStateSubdivisions.all {
            await verifyWikipediaURL(subdivision)
            try await Task.sleep(nanoseconds: seconds)
        }
    }
    private func validateCityWikipediaURLs(_ seconds: UInt64) async throws {
        for city in SovereignStateCities.all {
            await verifyWikipediaURL(city)
            try await Task.sleep(nanoseconds: seconds)
        }
    }
    private func verifyWikipediaURL(_ region: any SovereignRegion) async {
        let url:String = region.getWikipediaURL()
        let slug:String = url.components(separatedBy: "/").last!
        let valid:Bool = await getSummaryAndImageURL(slug: slug)
        let msg:String = "invalid Wikipedia URL for sovereign region with cache id \"" + region.cache_id + "\"; url=\"" + url + "\"; slug=\"" + slug + "\""
        if !valid {
            print(msg)
        }
        //XCTAssert(valid, msg)
    }
    private func getSummaryAndImageURL(slug: String) async -> Bool {
        let url:String = "https://en.wikipedia.org/api/rest_v1/page/summary/" + slug
        guard let url:URL = URL(string: url), let data:Data = await makeRequest(request: URLRequest(url: url)) else {
            return false
        }
        do {
            let json:WikipediaAPIResponse = try JSONDecoder().decode(WikipediaAPIResponse.self, from: data)
            return json.extract != nil
        } catch {
            return false
        }
    }
    private func makeRequest(request: URLRequest) async -> Data? {
        return try? await withCheckedThrowingContinuation({ continuation in
            let dataTask:URLSessionDataTask = URLSession.shared.dataTask(with: request) { data, response, error in
                guard let data:Data = data, let _:URLResponse = response else {
                    let error:Error = error ?? URLError(.badServerResponse)
                    return continuation.resume(throwing: error)
                }
                continuation.resume(returning: data)
            }
            dataTask.resume()
        })
    }
    
    private func testCountryMentions() {
        let targetCountries:[Country] = [Country.japan, Country.united_states, Country.canada, Country.russia, Country.china, Country.taiwan, Country.kenya, Country.mexico, Country.luxembourg, Country.switzerland, Country.egypt, Country.poland, Country.romania, Country.bahamas, Country.sao_tome_and_principe, Country.zambia]
        let mentionedString:String = "Japan; this string should find the mentioned countries: United States, (Canada) Russia! China? Taiwan; Kenya: Mexico, Luxembourg, Switzerland's, \"Egypt\", Poland, [Romania], the Bahamas, Sao Tome and Principe, and Zambia. Case Sensitive! Will not find New zealand, central african republic, el Salvador, latv.a, FINLAND, OMan, Dominican, and Ire?and."
        let mentioned:[Country] = Country.getAllMentioned(mentionedString) ?? [Country]()
        let notFound:[Country] = targetCountries.filter({ !mentioned.contains($0) })
        if !notFound.isEmpty {
            print("SwiftSovereignStatesTests;testCountryMentions;missing " + notFound.count.description + ";=[" + notFound.map({ $0.rawValue }).joined(separator: ",") + "]")
        }
        let notMentioned:[Country] = mentioned.filter({ !targetCountries.contains($0)})
        if !notMentioned.isEmpty {
            print("SwiftSovereignStatesTests;testCountryMentions;shouldn't be=[" + notMentioned.map({ $0.rawValue }).joined(separator: ",") + "]")
        }
        XCTAssert(mentioned.count == targetCountries.count)
        
        XCTAssert(Country.valueOf("USA", cache: false, ignoreCase: false) != nil);
        XCTAssert(Country.valueOf("usa", cache: false, ignoreCase: false) == nil);
        XCTAssert(Country.valueOf("usa", cache: false, ignoreCase: true) != nil);
    }
    private func testSubdivisionMentions() {
        let targetSubdivisions:[any SovereignStateSubdivision] = [SubdivisionsMexico.baja_california, SubdivisionsUnitedStates.california]
        let mentionedString:String = "Baja California; California!"
        let mentioned:[any SovereignStateSubdivision] = SovereignStateSubdivisions.getAllMentioned(mentionedString) ?? [any SovereignStateSubdivision]()
        let notFound:[any SovereignStateSubdivision] = targetSubdivisions.filter({
            let subdivision:any SovereignStateSubdivision = $0
            return !mentioned.contains(where: { subdivision.isEqual($0) })
        })
        if !notFound.isEmpty {
            print("SwiftSovereignStatesTests;testSubdivisionMentions;missing " + notFound.count.description + ";=[" + notFound.map({ $0.rawValue }).joined(separator: ",") + "]")
        }
        let notMentioned:[any SovereignStateSubdivision] = mentioned.filter({
            let subdivision:any SovereignStateSubdivision = $0
            return !targetSubdivisions.contains(where: { subdivision.isEqual($0) })
        })
        if !notMentioned.isEmpty {
            print("SwiftSovereignStatesTests;testSubdivisionMentions;shouldn't be=[" + notMentioned.map({ $0.rawValue }).joined(separator: ",") + "]")
        }
        XCTAssert(mentioned.count == targetSubdivisions.count, "mentioned != targetSubdivisions")
    }
    private func testCityMentions() {
        let minneapolis:[any SovereignStateCity]? = SubdivisionsUnitedStates.minnesota.valueOfCity("Minneapolis")
        XCTAssert(minneapolis != nil)
        
        let lakeside:[any SovereignStateCity]? = SubdivisionsUnitedStates.texas.valueOfCity("Lakeside")
        XCTAssert(lakeside != nil && lakeside!.count == 2)
        
        let targetCities:[any SovereignStateCity] = [
            CitiesUnitedStatesKentucky.rochester, CitiesUnitedStatesMinnesota.rochester, CitiesUnitedStatesNewHampshire.rochester, CitiesUnitedStatesOhio.rochester, CitiesUnitedStatesTexas.rochester,
            CitiesUnitedStatesMaine.naples, CitiesUnitedStatesSouthDakota.naples, CitiesUnitedStatesTexas.naples, CitiesUnitedStatesUtah.naples,
            CitiesUnitedStatesMaine.dallas, CitiesUnitedStatesSouthDakota.dallas, CitiesUnitedStatesTexas.dallas,
            CitiesUnitedStatesIdaho.oakley, CitiesUnitedStatesUtah.oakley,
            CitiesUnitedStatesIowa.des_moines, CitiesUnitedStatesNewMexico.des_moines, CitiesUnitedStatesWashington.des_moines,
            CitiesUnitedStatesArizona.summit, CitiesUnitedStatesArkansas.summit, CitiesUnitedStatesSouthDakota.summit,
            
            CitiesUnitedStatesMinnesota.kasson, CitiesUnitedStatesMinnesota.minneapolis, CitiesUnitedStatesMinnesota.owatonna, CitiesUnitedStatesMinnesota.faribault, CitiesUnitedStatesMontana.anaconda, CitiesUnitedStatesNorthDakota.edmore, CitiesUnitedStatesMontana.winifred, CitiesUnitedStatesIdaho.lost_river, CitiesUnitedStatesNorthDakota.upham, CitiesUnitedStatesMinnesota.st_leo, CitiesUnitedStatesTexas.mclean
        ]
        
        let mentionedString:String = "Rochester; this string should find the mentioned cities: Minneapolis, (Kasson) Owatonna! [Faribault] Dallas? Des Moines; Anaconda: Oakley, Naples, Edmore's, \"Winifred\", Lost River, Summit, Upham, St. Leo, and McLean. Case Sensitive! Will not find des Moines, sum.it, ROCHESTER, EDmore, and C?shing."
        
        let mentioned:[any SovereignStateCity] = SovereignStateCities.getAllMentioned(mentionedString) ?? [any SovereignStateCity]()
        XCTAssert(mentioned.count > 0, "mentioned.count == 0")
        let notFound:[any SovereignStateCity] = targetCities.filter({
            let city:any SovereignStateCity = $0
            return !mentioned.contains(where: { city.isEqual($0) })
        })
        let notMentioned:[any SovereignStateCity] = mentioned.filter({
            let city:any SovereignStateCity = $0
            return !targetCities.contains(where: { city.isEqual($0) })
        })
        if !notFound.isEmpty {
            print("SwiftSovereignStatesTests;testCityMentions;missing " + notFound.count.description + ";[" + notFound.map({ $0.cache_id }).joined(separator: ",") + "]")
        }
        if !notMentioned.isEmpty {
            print("SwiftSovereignStatesTests;testCityMentions;shouldn't be=[" + notMentioned.map({ $0.cache_id }).joined(separator: ",") + "]")
        }
        XCTAssert(mentioned.count == targetCities.count, "mentioned.count=" + mentioned.count.description + ", targetCities.count=" + targetCities.count.description)
    }
    
    private func testNeighbors() {
        let _:[any SovereignStateSubdivision]? = SubdivisionsUnitedStates.minnesota.neighbors
        
        var foundAtLeastOneNeighbors:Bool = false
        outer : for country in Country.allCases {
            if let subdivisions:[any SovereignStateSubdivision] = country.getSubdivisions() {
                for subdivision in subdivisions {
                    if let _:[any SovereignStateSubdivision] = subdivision.neighbors {
                        foundAtLeastOneNeighbors = true
                        break outer
                    }
                }
            }
        }
        XCTAssert(foundAtLeastOneNeighbors, "foundAtLeastOneNeighbors=false")
    }
    
    private func testCities() {
        let minnesota:any SovereignStateSubdivision = SubdivisionsUnitedStates.minnesota
        guard let cities:[any SovereignStateCity] = minnesota.cities else {
            XCTAssert(false, "minnesota.getCities() == nil")
            return
        }
        for city in cities {
            XCTAssert(city.subdivision.isEqual(minnesota), "minnesota city.getSubdivision != Minnesota")
        }
    }
    
    private func generate_english_localization() {
        /*for country in Country.allCases {
            let short_name_id:String = "country_short_name_" + country.rawValue
            print("case " + short_name_id + "\" = \"" + country.getShortName() + "\";")
        }*/
    }
    private func test_localization(language: String) {
        var missing:[String] = [String]()
        for country in Country.allCases {
            let string:String = SwiftSovereignStateLocalization.get_country_short_name(country)
            if string.elementsEqual("nil") {
                missing.append(country.rawValue)
            }
        }
        XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing " + missing.count.description + " country_short_names for " + missing.description)
        missing.removeAll()
        
        for currency in Currency.allCases {
            let string:String = currency.name
            if string.elementsEqual("nil") {
                missing.append(currency.rawValue)
            }
        }
        XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing " + missing.count.description + " currency_names for " + missing.description)
        missing.removeAll()
    }
}

private struct WikipediaAPIResponse : Codable {
    let extract:String?
}

private struct TestEncodableStruct<T: SovereignStateSubdivision, U: SovereignStateCity> : Encodable {
    let country:Country
    let subdivision:T
    let city:U
}

private struct TestDecodableStruct : Decodable {
    let country:Country
    let subdivision:SovereignStateSubdivisionWrapper
    let city:SovereignStateCityWrapper
    
    //lazy var targetSubdivision:(any SovereignStateSubdivision)? = SovereignStateSubdivisions.valueOfCacheID(subdivision)
    //lazy var targetCity:(any SovereignStateCity)? = SovereignStateCities.valueOfCacheID(city)
}
