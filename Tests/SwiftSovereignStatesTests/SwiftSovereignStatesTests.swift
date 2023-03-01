import XCTest
import SwiftSovereignStates
import QuartzCore
import Kanna

final class SwiftSovereignStatesTests: XCTestCase {
    func testExample() async throws {
        let _:[Set<String>] = Country.allCases.map({ $0.keywords })
        let _:[Set<String>] = SovereignStateSubdivisions.all.map({ $0.keywords })
        let _:[Set<String>] = SovereignStateCities.all.map({ $0.keywords })
        
        try testFoundations()
        try testCodable()
        testWikipediaURLs()
        testCountryMentions()
        testSubdivisionMentions()
        testCityMentions()
        testNeighbors()
        testCities()
        
        generate_english_localization()
        test_localization()
        
        //await generate_sovereign_regions()
        await generate_level_2_divisions()
        
        //try await test_benchmarks(cache: false)
        //try await test_benchmarks(cache: true)
        
        //let seconds:UInt64 = 500_000_000
        //try await validateCountryWikipediaURLs(seconds)
        //try await validateSubdivisionWikipediaURLs(seconds)
        //try await validateCityWikipediaURLs(seconds)
    }
    
    private func generate_sovereign_regions() async {
        let regexReplacements:[String:String] = [
            "( |-|'|/|–)" : "_",
            "(\\.|\\!|\\?|,)" : "",
            
            "(à|á|â|ä|ã|å|ā|ă)" : "a",
            "(æ)" : "ae",
            "(ç|ć|č|ċ)" : "c",
            "(è|é|ê|ë|ē|ė|ę)" : "e",
            "(ġ|ğ)" : "g",
            "(ħ)" : "h",
            "(î|ï|í|ī|į|ì|ı|İ)" : "i",
            "(ł)" : "l",
            "(ñ|ń|ň)" : "n",
            "(ô|ö|ò|ó|œ|ø|ō|õ|ð)" : "o",
            "(þ)" : "th",
            "(ß|ś|š|ș|ş)" : "s",
            "(ț)" : "t",
            "(û|ü|ù|ú|ū)" : "u",
            "(ÿ|ý)" : "y",
            "(ž|ź|ż)" : "z"
        ]
        guard let test:HTMLDocument = await request_html(url: "https://en.wikipedia.org/wiki/Districts_of_Uganda") else {
            return
        }
        var cities:[String] = [String](), cityNames:[String] = [String](), flagURLs:[String] = [String]()
        let tables:XPathObject = test.css("table.sortable")
        for table in tables {
            let trs:XPathObject = table.css("tbody tr")
            for tr in trs {
                let tds:XPathObject = tr.css("td")
                if tds.count >= 4 {
                    let tdElement:Kanna.XMLElement = tds[1]
                    let hrefs:XPathObject = tdElement.css("a[href]")
                    if hrefs.count >= 1 {
                        let flagURL:String? = tds[0].css("img").first?["src"]?.components(separatedBy: "/thumb/")[1].components(separatedBy: "/[0-9]+px-")[0].components(separatedBy: ".svg")[0]
                        let cityElement:Kanna.XMLElement = hrefs[0]
                        let cityName:String = cityElement.get_text()!
                        var city:String = cityName.replacingOccurrences(of: " †", with: "").replacingOccurrences(of: "†", with: "").components(separatedBy: " (").first!.lowercased()
                        if city.hasSuffix(" ") {
                            city = String(city.prefix(city.count-1))
                        }
                        let previousCity:String = city.replacingOccurrences(of: " ", with: "_")
                        for (regex, replacement) in regexReplacements {
                            city = city.replacingOccurrences(of: regex, with: replacement, options: .regularExpression)
                        }
                        let didReplace:Bool = !previousCity.elementsEqual(city)
                        let caseString:String = "    case "
                        cities.append(caseString + city)
                        if didReplace {
                            cityNames.append(caseString + "." + city + ": return \"" + cityName + "\"")
                        }
                        flagURLs.append(caseString + "." + city + ": return " + (flagURL != nil ? "\"" + flagURL! + "\"" : "nil"))
                    }
                }
            }
        }
        cities = cities.sorted { $0 < $1 }
        cityNames = cityNames.sorted { $0 < $1 }
        flagURLs = flagURLs.sorted { $0 < $1 }
        for city in cities {
            print(city)
        }
        for city in cityNames {
            print(city)
        }
        for flagURL in flagURLs {
            print(flagURL)
        }
    }
    private func generate_level_2_divisions() async {
        let regexReplacements:[String:String] = [
            "( |-|'|/|–)" : "_",
            "(\\.|\\!|\\?|,)" : "",
            
            "(à|á|â|ä|ã|å|ā|ă)" : "a",
            "(æ)" : "ae",
            "(ç|ć|č|ċ)" : "c",
            "(è|é|ê|ë|ē|ė|ę)" : "e",
            "(ġ|ğ)" : "g",
            "(ħ)" : "h",
            "(î|ï|í|ī|į|ì|ı|İ)" : "i",
            "(ł)" : "l",
            "(ñ|ń|ň)" : "n",
            "(ô|ö|ò|ó|œ|ø|ō|õ|ð)" : "o",
            "(þ)" : "th",
            "(ß|ś|š|ș|ş)" : "s",
            "(ț)" : "t",
            "(û|ü|ù|ú|ū)" : "u",
            "(ÿ|ý)" : "y",
            "(ž|ź|ż)" : "z"
        ]
        guard let test:HTMLDocument = await request_html(url: "https://en.wikipedia.org/wiki/List_of_counties_in_South_Dakota") else {
            return
        }
        var identifiers:[String] = [String](), names:[String] = [String](), fips_codes:[String] = [String]()
        let tables:XPathObject = test.css("table.sortable")
        if let table:Kanna.XMLElement = tables.first {
            let trs:XPathObject = table.css("tbody tr")
            for tr in trs {
                if let ths:XPathObject = tr.css("th").first?.css("a[href]") {
                    let tds:XPathObject = tr.css("td")
                    var identifier:String = "", caseString:String = ""
                    if ths.count >= 1 {
                        let element:Kanna.XMLElement = ths[0]
                        
                        //let flagURL:String? = tds.first?.css("img").first?["src"]?.components(separatedBy: "/thumb/")[1].components(separatedBy: "/[0-9]+px-")[0].components(separatedBy: ".svg")[0]
                        let name:String = element.get_text()!
                            .replacingOccurrences(of: "City and County of ", with: "")
                            .replacingOccurrences(of: " County", with: "")
                        identifier = name.replacingOccurrences(of: " †", with: "").replacingOccurrences(of: "†", with: "").components(separatedBy: " (").first!.lowercased()
                        if identifier.hasSuffix(" ") {
                            identifier = String(identifier.prefix(identifier.count-1))
                        }
                        let previous_identifier:String = identifier.replacingOccurrences(of: " ", with: "_")
                        for (regex, replacement) in regexReplacements {
                            identifier = identifier.replacingOccurrences(of: regex, with: replacement, options: .regularExpression)
                        }
                        let didReplace:Bool = !previous_identifier.elementsEqual(identifier)
                        caseString = "    case "
                        identifiers.append(caseString + identifier)
                        if didReplace {
                            names.append(caseString + "." + identifier + ": return \"" + name + "\"")
                        }
                    }
                    if tds.count >= 1 {
                        let tdElement:Kanna.XMLElement = tds[0]
                        let hrefs:XPathObject = tdElement.css("a[href]")
                        if hrefs.count >= 1 {
                            fips_codes.append(caseString + "." + identifier + ": return " + hrefs[0].get_text()!)
                        }
                    }
                }
            }
        }
        identifiers = identifiers.sorted { $0 < $1 }
        names = names.sorted { $0 < $1 }
        fips_codes = fips_codes.sorted { $0 < $1 }
        for identifier in identifiers {
            print(identifier)
        }
        for identifier in names {
            print(identifier)
        }
        for fips_code in fips_codes {
            print(fips_code)
        }
    }
    
    private func test_benchmarks(cache: Bool) async throws {
        print("SwiftSovereignStatesTests;test_benchmarks;cache=" + cache.description)
        if #available(macOS 13.0, *) {
            
            //for _ in 1...100 {
            //    try await benchmark_compare(key1: "test1", {
                    //let mentioned:[any SovereignStateSubdivision]? = SovereignStateSubdivisions.getAllMentioned("Minnesota! Baku? (Limburg) Buenos Aires's, Zabul.", cache: cache)
                    //XCTAssert(mentioned != nil && mentioned!.count >= 5)
           //     }, key2: "test2", code2: {
                    //let mentioned:[any SovereignStateSubdivision]? = SovereignStateSubdivisions.getAllMentioned2("Minnesota! Baku? (Limburg) Buenos Aires's, Zabul.", cache: cache)
                    //XCTAssert(mentioned != nil && mentioned!.count >= 5)
            //    })
            //}
            
            //return;
            
            let _ = try await benchmark(key: "Country.init(_ description) [LosslessStringConvertible]") {
                let country:Country? = Country.init("united_states")
                XCTAssert(country != nil)
            }
            let _ = try await benchmark(key: "Country.init(rawValue) [RawRepresentable]") {
                let country:Country? = Country.init(rawValue: "united_states")
                XCTAssert(country != nil)
            }
            let _ = try await benchmark(key: "SubdivisionsUnitedStates.init(_ description) [LosslessStringConvertible]") {
                let subdivision:SubdivisionsUnitedStates? = SubdivisionsUnitedStates.init("united_states-minnesota")
                XCTAssert(subdivision != nil)
            }
            let _ = try await benchmark(key: "SubdivisionsUnitedStates.init(rawValue) [RawRepresentable]") {
                let subdivision:SubdivisionsUnitedStates? = SubdivisionsUnitedStates.init(rawValue: "minnesota")
                XCTAssert(subdivision != nil)
            }
            let _ = try await benchmark(key: "CitiesUnitedStatesMinnesota.init(_ description) [LosslessStringConvertible]") {
                let city:CitiesUnitedStatesMinnesota? = CitiesUnitedStatesMinnesota.init("united_states-minnesota-kasson")
                XCTAssert(city != nil)
            }
            let _ = try await benchmark(key: "CitiesUnitedStatesMinnesota.init(rawValue) [RawRepresentable]") {
                let city:CitiesUnitedStatesMinnesota? = CitiesUnitedStatesMinnesota.init(rawValue: "kasson")
                XCTAssert(city != nil)
            }
            
            let _ = try await benchmark(key: "Country.united_states.valueOfSubdivisionIdentifier") {
                let subdivision:(any SovereignStateSubdivision)? = Country.united_states.valueOfSubdivisionIdentifier("minnesota")
                XCTAssert(subdivision != nil)
            }
            let _ = try await benchmark(key: "SovereignStateSubdivisions.valueOfCacheID") {
                let subdivision:(any SovereignStateSubdivision)? = SovereignStateSubdivisions.valueOfCacheID("united_states-minnesota", cache: cache)
                XCTAssert(subdivision != nil)
            }
            let _ = try await benchmark(key: "SovereignStateSubdivisions.valueOf") {
                let all:[any SovereignStateSubdivision]? = SovereignStateSubdivisions.valueOf("Minnesota", cache: cache)
                XCTAssert(all != nil)
            }
            let _ = try await benchmark(key: "SovereignStateSubdivisions.getAllMentioned") {
                let mentioned:[any SovereignStateSubdivision]? = SovereignStateSubdivisions.getAllMentioned("Minnesota! Baku? (Limburg) Buenos Aires's, Zabul.", cache: cache)
                XCTAssert(mentioned != nil && mentioned!.count >= 5)
            }
            let _ = try await benchmark(key: "SovereignStateSubdivisions.getAllMentionedParallel") {
                let mentioned:[any SovereignStateSubdivision]? = await SovereignStateSubdivisions.getAllMentionedParallel("Wisconsin! Baku? (Limburg) Buenos Aires's, Zabul.", cache: cache)
                XCTAssert(mentioned != nil && mentioned!.count >= 5)
            }
            
            let _ = try await benchmark(key: "SubdivisionsUnitedStates.minnesota.valueOfIdentifier") {
                let city:(any SovereignStateCity)? = SubdivisionsUnitedStates.minnesota.valueOfCityIdentifier("rochester")
                XCTAssert(city != nil)
            }
            let _ = try await benchmark(key: "SovereignStateCities.valueOfCacheID") {
                let city:(any SovereignStateCity)? = SovereignStateCities.valueOfCacheID("united_states-minnesota-rochester", cache: cache)
                XCTAssert(city != nil)
            }
            let _ = try await benchmark(key: "SovereignStateCities.valueOf") {
                let cities:[any SovereignStateCity]? = SovereignStateCities.valueOf("Rochester", cache: cache, ignoreCase: false)
                XCTAssert(cities != nil && cities!.count >= 1)
            }
            let _ = try await benchmark(key: "SovereignStateCities.getAllMentioned") {
                let cities:[any SovereignStateCity]? = SovereignStateCities.getAllMentioned("Rochester! Minneapolis? (Dodge Center) Owatonna's, Dallas, Lakeside; Kansas City, Alpine.", cache: cache)
                XCTAssert(cities != nil && cities!.count >= 8)
            }
            let _ = try await benchmark(key: "SovereignStateCities.getAllMentionedParallel") {
                let cities:[any SovereignStateCity]? = await SovereignStateCities.getAllMentionedParallel("Kasson! Minneapolis? (Dodge Center) Owatonna's, Dallas, Lakeside; Kansas City, Alpine.", cache: cache)
                XCTAssert(cities != nil && cities!.count >= 8)
            }
            
        } else {
            print("SwiftSovereignStatesTests;failed to execute benchmarks due to outdated macOS version (less than 13.0)")
        }
    }
    
    @available(macOS 13.0, *)
    private func benchmark(key: String, _ code: @escaping () async throws -> Void, will_print: Bool = true) async throws -> (key: String, min: Int64, max: Int64, median: Int64, average: Int64, total: Int64) {
        let iteration_count:Int = 10_00
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
        let minimum:Int64 = timings.first!, maximum:Int64 = timings.last!
        let median:Int64 = timings[timings.count/2]
        let sum:Int64 = timings.reduce(0, +)
        let average:Int64 = Int64( Double(sum) / Double(timings.count) )
        if will_print {
            let key:String = key + (1...(80-key.count)).map({ _ in " " }).joined()
            
            let formatter:NumberFormatter = NumberFormatter()
            formatter.numberStyle = .decimal
            formatter.maximumFractionDigits = 20
            
            let average_time_elapsed:String = get_benchmark_formatted_string(formatter: formatter, average)
            let minimum_time_elapsed:String = get_benchmark_formatted_string(formatter: formatter, minimum)
            let maximum_time_elapsed:String = get_benchmark_formatted_string(formatter: formatter, maximum)
            let median_time_elapsed:String = get_benchmark_formatted_string(formatter: formatter, median)
            let total_time_elapsed:String = get_benchmark_formatted_string(formatter: formatter, sum)
            
            print("SwiftSovereignStates;benchmark( " + key + "| min=" + minimum_time_elapsed + " | max=" + maximum_time_elapsed + " | median=" + median_time_elapsed + " | average=" + average_time_elapsed + " | total=" + total_time_elapsed)
        }
        return (key: key, min: minimum, max: maximum, median: median, average: average, total: sum)
    }
    @available(macOS 13.0, *)
    private func benchmark_compare(key1: String, _ code1: @escaping () async throws -> Void, key2: String, code2: @escaping () async throws -> Void) async throws {
        async let test1 = benchmark(key: key1, code1, will_print: false)
        async let test2 = benchmark(key: key2, code2, will_print: false)
        let ((key1, min1, max1, median1, average1, total1) , (_, min2, max2, median2, average2, total2)) = try await (test1, test2)
        
        let formatter:NumberFormatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 20
        
        let average_time_diff:String = get_benchmark_formatted_string(formatter: formatter, max(average1, average2) - min(average1, average2))
        let minimum_time_diff:String = get_benchmark_formatted_string(formatter: formatter, max(min1, min2) - min(min1, min2))
        let maximum_time_diff:String = get_benchmark_formatted_string(formatter: formatter, max(max1, max2) - min(max1, max2))
        let median_time_diff:String = get_benchmark_formatted_string(formatter: formatter, max(median1, median2) - min(median1, median2))
        let total_time_diff:String = get_benchmark_formatted_string(formatter: formatter, max(total1, total2) - min(total1, total2), separation_count: 20)
        
        let key:String = key1 + (1...(70-key1.count)).map({ _ in " " }).joined()
        var string:String = "SwiftSovereignStates;benchmark_compare( " + key + "| "
        string.append("min=" + (min1 < min2 ? "🟢" : "🔴") + "by " + minimum_time_diff)
        string.append(" | max=" + (max1 < max2 ? "🟢" : "🔴") + "by " + maximum_time_diff)
        string.append(" | median=" + (median1 < median2 ? "🟢" : "🔴") + "by " + median_time_diff)
        string.append(" | average=" + (average1 < average2 ? "🟢" : "🔴") + "by " + average_time_diff)
        string.append(" | total=" + (total1 < total2 ? "🟢" : "🔴") + "by " + total_time_diff)
        print(string)
    }
    private func get_benchmark_formatted_string(formatter: NumberFormatter, _ value: Any, separation_count: Int = 20) -> String {
        let string:String = formatter.string(for: value)! + "ns"
        return string + (0..<(separation_count - (string.count))).map({ _ in " " }).joined()
    }
    
    private func testFoundations() throws {
        let unitedStates:Country = Country.united_states
        XCTAssert(unitedStates.rawValue.elementsEqual("united_states"))
        XCTAssert(unitedStates.cache_id.elementsEqual("united_states"))
        let minnesota:any SovereignStateSubdivision = SubdivisionsUnitedStates.minnesota
        XCTAssert(minnesota.rawValue.elementsEqual("minnesota"))
        XCTAssert(minnesota.cache_id.elementsEqual("united_states-minnesota"))
        XCTAssert(minnesota.country == unitedStates)
        XCTAssert(SubdivisionsAfghanistan.badakhshan.country == Country.afghanistan)
        let kasson:any SovereignStateCity = CitiesUnitedStatesMinnesota.kasson
        XCTAssert(kasson.rawValue.elementsEqual("kasson"))
        XCTAssert(kasson.cache_id.elementsEqual("united_states-minnesota-kasson"))
        
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
{"country":"united_states","subdivision":"united_states-minnesota","city":"united_states-minnesota-kasson"}
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
            if let subdivisions:[any SovereignStateSubdivision] = country.subdivisions {
                for subdivision in subdivisions {
                    let subdivisionWikipediaURL:String = subdivision.wikipedia_url
                    if subdivisionWikipediaURL.contains(" ") {
                        failedSubdivisions.append(subdivision)
                    }
                    if let cities:[any SovereignStateCity] = subdivision.cities {
                        for city in cities {
                            let cityWikipediaURL:String = city.wikipedia_url
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
                print("SwiftSovereignStatesTests;testWikipediaURLs;failedSubdivisions;" + country.rawValue + ";" + subdivision.rawValue + ";wikipediaURL=" + subdivision.wikipedia_url)
            }
        }
        XCTAssert(failedSubdivisions.count == 0)
        
        if failedCities.count > 0 {
            print("SwiftSovereignStatesTests;testWikipediaURLs;failedCities=" + failedCities.count.description)
            for city in failedCities {
                let subdivision = city.subdivision
                let country:Country = subdivision.country
                print("SwiftSovereignStatesTests;testWikipediaURLs;failedCities;" + country.rawValue + ";" + subdivision.rawValue + ";" + city.rawValue + ";wikipediaURL=" + subdivision.wikipedia_url)
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
        let url:String = region.wikipedia_url
        let slug:String = url.components(separatedBy: "/").last!
        let valid:Bool = await getSummaryAndImageURL(slug: slug)
        XCTAssert(valid, "invalid Wikipedia URL for sovereign region with cache id \"" + region.cache_id + "\"; url=\"" + url + "\"; slug=\"" + slug + "\"")
    }
    private func getSummaryAndImageURL(slug: String) async -> Bool {
        let url:String = "https://en.wikipedia.org/api/rest_v1/page/summary/" + slug
        guard let data:Data = await make_request(url: url) else { return false }
        do {
            let json:WikipediaAPIResponse = try JSONDecoder().decode(WikipediaAPIResponse.self, from: data)
            return json.extract != nil
        } catch {
            return false
        }
    }
    
    private func make_request<T : Decodable>(url: String) async -> T? {
        guard let url:URL = URL(string: url),
              let data:Data = await make_request(request: URLRequest(url: url)) else {
            return nil
        }
        return try? JSONDecoder().decode(T.self, from: data)
    }
    private func request_html(url: String) async -> HTMLDocument? {
        guard let url:URL = URL(string: url),
              let data:Data = await make_request(request: URLRequest(url: url)),
              let html:String = String(data: data, encoding: .utf8) else {
            return nil
        }
        return try? HTML(html: html, encoding: .utf8)
    }
    private func make_request(request: URLRequest) async -> Data? {
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
        
        XCTAssert(Country.valueOf("USA", cache: false, ignoreCase: false) != nil)
        XCTAssert(Country.valueOf("usa", cache: false, ignoreCase: false) == nil)
        XCTAssert(Country.valueOf("usa", cache: false, ignoreCase: true) != nil)
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
            if let subdivisions:[any SovereignStateSubdivision] = country.subdivisions {
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
            print("case " + short_name_id + "\" = \"" + country.short_name + "\";")
        }*/
    }
    private func test_localization() {
        let supported_language_codes:[String] = ["en"]
        for language in supported_language_codes {
            var missing:[String] = [String]()
            for country in Country.allCases {
                let string:String = SwiftSovereignStateLocalization.get_country_short_name(country, language_code: language)
                if string.elementsEqual("nil") {
                    missing.append(country.rawValue)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing " + missing.count.description + " country_short_names for " + missing.description)
            missing.removeAll()
            
            for currency in Currency.allCases {
                let string:String = SwiftSovereignStateLocalization.get_currency_name(currency, language_code: language)
                if string.elementsEqual("nil") {
                    missing.append(currency.rawValue)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing " + missing.count.description + " currency_names for " + missing.description)
            missing.removeAll()
            
            for type in SovereignStateSubdivisionType.allCases {
                let string:String = SwiftSovereignStateLocalization.get_subdivision_type_name_singular(type, language_code: language)
                if string.elementsEqual("nil") {
                    missing.append(type.rawValue)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing " + missing.count.description + " subdivision_types_name_singular for " + missing.description)
            missing.removeAll()
            for type in SovereignStateSubdivisionType.allCases {
                let string:String = SwiftSovereignStateLocalization.get_subdivision_type_name_plural(type, language_code: language)
                if string.elementsEqual("nil") {
                    missing.append(type.rawValue)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing " + missing.count.description + " subdivision_types_name_plural for " + missing.description)
            missing.removeAll()
        }
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

fileprivate extension Kanna.XMLElement {
    func get_text() -> String? {
        return remove_wikipedia_references(text?.replacingOccurrences(of: "*", with: "").trimmingCharacters(in: .whitespacesAndNewlines))
    }
    func remove_wikipedia_references(_ string: String?) -> String! {
        guard let string:String = string else { return nil }
        let regex:String = "(\\[.*?])"
        return string.replacingOccurrences(of: regex, with: "", options: .regularExpression)
    }
}
