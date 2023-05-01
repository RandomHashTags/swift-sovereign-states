import XCTest
import SwiftSovereignStates
import QuartzCore
import Kanna

final class SwiftSovereignStatesTests: XCTestCase {
    func testExample() async throws {
        //generate_all_english_localization_file()
        //generate_english_localization()
        //await generate_divisions()
        //return;
        
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
        
        test_localization()
        
        //try await test_benchmarks(cache: false)
        //try await test_benchmarks(cache: true)
        
        /*let seconds:UInt64 = 1 * 1_000_000_000
        if let regions:[any SovereignRegion] = Country.united_states.subdivisions?.filter({ $0.rawValue[$0.rawValue.index($0.rawValue.startIndex, offsetBy: 0)] > "m" }).compactMap({ $0.counties }).flatMap({ $0 }) {
            print("validating " + regions.count.description + " regions...")
            try await validate_region_wikipedia_urls(regions: regions, seconds)
        }*/
        //try await validate_region_wikipedia_urls(regions: Country.allCases, seconds)
        //try await validate_region_wikipedia_urls(regions: SovereignStateSubdivisions.all, seconds)
        //try await validate_region_wikipedia_urls(regions: SovereignStateCities.all, seconds)
    }
    
    private func generate_divisions() async {
        let regex_replacements:[String:String] = [
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
        
        //await generate_level_1_divisions(regex_replacements)
        //await generate_level_2_divisions(regex_replacements)
    }
    private func generate_level_1_divisions(_ regex_replacements: [String:String]) async {
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
                        for (regex, replacement) in regex_replacements {
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
    private func generate_level_2_divisions(_ regex_replacements: [String:String]) async {
        guard let test:HTMLDocument = await request_html(url: "https://en.wikipedia.org/wiki/List_of_parishes_in_Louisiana") else {
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
                            .replacingOccurrences(of: " Borough", with: "")
                            .replacingOccurrences(of: " Parish", with: "")
                        identifier = name.replacingOccurrences(of: " †", with: "").replacingOccurrences(of: "†", with: "").components(separatedBy: " (").first!.lowercased()
                        if identifier.hasSuffix(" ") {
                            identifier = String(identifier.prefix(identifier.count-1))
                        }
                        let previous_identifier:String = identifier.replacingOccurrences(of: " ", with: "_")
                        for (regex, replacement) in regex_replacements {
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
            
            /*let array:Array<String> = ["homie", "got", "played"]
            try await benchmark_compare_is_faster(key1: "test1", {
                let _:String = array[0]
            }, key2: "test2", code2: {
                let _:String = array.first!
            })*/
            
            return;
            
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
    private func benchmark_compare_is_faster(maximum_iterations: Int = 100, key1: String, _ code1: @escaping () async throws -> Void, key2: String, code2: @escaping () async throws -> Void) async throws {
        var faster_count:Int = 0, faster_average:Int64 = 0
        for _ in 1...maximum_iterations {
            let faster:(Bool, Int64) = try await benchmark_compare(key1: key1, code1, key2: key2, code2: code2, print_to_console: false)
            faster_count += faster.0 ? 1 : 0
            faster_average += faster.1
        }
        let formatter:NumberFormatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 20
        let average_string:String = get_benchmark_formatted_string(formatter: formatter, faster_average / Int64(maximum_iterations))
        print("SwiftSovereignStates;benchmark_compare_is_faster;     " + key1 + " is faster " + faster_count.description + "/" + maximum_iterations.description + " on average by " + average_string)
    }
    @available(macOS 13.0, *)
    private func benchmark_compare(key1: String, _ code1: @escaping () async throws -> Void, key2: String, code2: @escaping () async throws -> Void, print_to_console: Bool = true) async throws -> (Bool, Int64) {
        async let test1 = benchmark(key: key1, code1, will_print: false)
        async let test2 = benchmark(key: key2, code2, will_print: false)
        let ((key1, min1, max1, median1, average1, total1) , (_, min2, max2, median2, average2, total2)) = try await (test1, test2)
        
        if print_to_console {
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
        return (average1 <= average2, average2 - average1)
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
    private func validate_region_wikipedia_urls(regions: [any SovereignRegion], _ seconds: UInt64) async throws {
        for region in regions {
            await verifyWikipediaURL(region)
            try await Task.sleep(nanoseconds: seconds)
        }
    }
    private func verifyWikipediaURL(_ region: any SovereignRegion) async {
        let url:String = region.wikipedia_url
        let slug:String = String(url.split(separator: "/").last!)
        let valid:Bool = await getSummaryAndImageURL(slug: slug)
        XCTAssert(valid, "invalid Wikipedia URL for sovereign region with cache id \"" + region.cache_id + "\"; url=\"" + url + "\"; slug=\"" + slug + "\"")
    }
    private func getSummaryAndImageURL(slug: String) async -> Bool {
        let url:String = "https://en.wikipedia.org/api/rest_v1/page/summary/" + slug
        guard let json:WikipediaAPIResponse = await make_request(url: url) else { return false }
        return json.extract != nil
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
}
extension SwiftSovereignStatesTests {
    private func generate_all_english_localization_file() {
        let date:String = Date().timeIntervalSince1970.description
        var array:[String] = [String]()
        var reserved_count:Int = 1
        reserved_count += 1 + Currency.allCases.count
        reserved_count += 1 + Country.allCases.count
        reserved_count += 2 + (SovereignStateSubdivisionType.allCases.count * 2) + SovereignStateSubdivisions.all.count
        reserved_count += 1 + SovereignStateCities.all.count
        array.reserveCapacity(reserved_count)
        
        array.append("/*\n  Localizable.strings\n  Generated at " + date + "\n*/")
        
        array.append("// Currency Names")
        for currency in Currency.allCases {
            array.append("\"" + currency.rawValue + "\" = \"" + SwiftSovereignStateLocalization.get_debug_currency_name(currency) + "\";")
        }
        
        array.append("// Country Short Names")
        for country in Country.allCases {
            array.append("\"" + country.cache_id + "\" = \"" + SwiftSovereignStateLocalization.get_debug_country_name(country) + "\";")
        }
        
        array.append("// Level 1 Subdivision Type Names")
        for type in SovereignStateSubdivisionType.allCases {
            array.append("\"" + type.rawValue + "_s\" = \"" + SwiftSovereignStateLocalization.get_debug_subdivision_type_name_singular(type) + "\";")
            array.append("\"" + type.rawValue + "_p\" = \"" + SwiftSovereignStateLocalization.get_debug_subdivision_type_name_plural(type) + "\";")
        }
        
        array.append("// Level 1 Subdivision Short Names")
        for subdivision in SovereignStateSubdivisions.all {
            array.append("\"" + subdivision.cache_id + "\" = \"" + SwiftSovereignStateLocalization.get_debug_subdivision_level_1_name(subdivision) + "\";")
        }
        
        array.append("// Level 3 Subdivision Short Names")
        for subdivision in SovereignStateCities.all {
            array.append("\"" + subdivision.cache_id + "\" = \"" + SwiftSovereignStateLocalization.get_debug_subdivision_level_3_name(subdivision) + "\";")
        }
        write(text: array.joined(separator: "\n"), to: "Localizable")
    }
    func write(text: String, to fileNamed: String, folder: String = "SavedFiles") {
        guard let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first,
              let writePath = NSURL(fileURLWithPath: path).appendingPathComponent(folder) else {
            return
        }
        try? FileManager.default.createDirectory(atPath: writePath.path, withIntermediateDirectories: true)
        let file = writePath.appendingPathComponent(fileNamed + ".strings")
        try? text.write(to: file, atomically: false, encoding: String.Encoding.utf8)
    }
    private func generate_english_localization() {
        /*for country in Country.allCases {
            if let subdivisions:[any SovereignStateSubdivision] = country.subdivisions {
                print("\n\n" + country.rawValue.uppercased())
                for subdivision in subdivisions {
                    let id:String = subdivision.rawValue
                    print("\"" + id + "\" = \"" + subdivision.name + "\";")
                }
            }
        }*/
        for county in CountiesUnitedStatesWyoming.allCases {
            print("\"" + county.rawValue + "\" = \"" + county.name + "\";")
        }
    }
    private func test_localization() {
        let supported_language_codes:[String] = ["en"]
        for language in supported_language_codes {
            var missing:[String] = [String]()
            for country in Country.allCases {
                let string:String = SwiftSovereignStateLocalization.get_release_sovereign_region_name(country, language_code: language)
                if string.elementsEqual("nil") {
                    missing.append(country.rawValue)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing " + missing.count.description + " country names for " + missing.description)
            missing.removeAll()
            
            for subdivision in SovereignStateSubdivisions.all {
                let string:String = SwiftSovereignStateLocalization.get_release_sovereign_region_name(subdivision, language_code: language)
                if string.elementsEqual("nil") {
                    missing.append(subdivision.cache_id)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing " + missing.count.description + " level-1 subdivision names for " + missing.description)
            missing.removeAll()
            
            for city in SovereignStateCities.all {
                let string:String = SwiftSovereignStateLocalization.get_release_sovereign_region_name(city, language_code: language)
                if string.elementsEqual("nil") {
                    missing.append(city.cache_id)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing " + missing.count.description + " level-3 subdivision names for " + missing.description)
            missing.removeAll()
            
            for currency in Currency.allCases {
                let string:String = SwiftSovereignStateLocalization.get_release_currency_name(currency, language_code: language)
                if string.elementsEqual("nil") {
                    missing.append(currency.rawValue)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing " + missing.count.description + " currency_names for " + missing.description)
            missing.removeAll()
            
            for type in SovereignStateSubdivisionType.allCases {
                let string:String = SwiftSovereignStateLocalization.get_release_subdivision_type_name_singular(type, language_code: language)
                if string.elementsEqual("nil") {
                    missing.append(type.rawValue)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing " + missing.count.description + " subdivision_types_name_singular for " + missing.description)
            missing.removeAll()
            for type in SovereignStateSubdivisionType.allCases {
                let string:String = SwiftSovereignStateLocalization.get_release_subdivision_type_name_plural(type, language_code: language)
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
