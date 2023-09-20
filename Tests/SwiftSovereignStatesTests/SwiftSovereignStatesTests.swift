import XCTest
import SwiftSovereignStates
import QuartzCore
import Kanna

final class SwiftSovereignStatesTests: XCTestCase {
    func testExample() async {
        //generate_all_english_localization_file()
        //generate_english_localization()
        //await generate_divisions()
        //return;
        
        print(Locale.Region("").identifier)
        
        for region in Locale.Region.allCases {
            if region.currencies.isEmpty {
                print("region;identifier=" + region.identifier + ";name=" + region.name() + ";currency identifier=none;keywords=" + region.keywords().description + ";subdivisions.count=\(region.subdivisions?.count ?? 0)")
            } else {
                for currency in region.currencies {
                    let currencyName:String = currency.name()
                    print("region;identifier=" + region.identifier + ";name=" + region.name() + ";currency identifier=" + region.currency.identifier + ";currency=" + currency.rawValue + ";currencyName=" + currencyName + ";keywords=" + region.keywords().description + ";subdivisions.count=\(region.subdivisions?.count ?? 0)")
                }
            }
        }
        
        let _:[Set<String>] = Locale.Region.allCases.map({ $0.keywords() })
        let _:[Set<String>] = SovereignStateSubdivisions.all.map({ $0.keywords })
        let _:[Set<String>] = SovereignStateCities.all.map({ $0.keywords })
        test_localization()
                
        //try await test_benchmarks(cache: false)
        
        /*let seconds:UInt64 = 1 * 1_000_000_000
        if let regions:[any SovereignRegion] = Locale.Region.unitedStates.subdivisions?.filter({ $0.rawValue[$0.rawValue.index($0.rawValue.startIndex, offsetBy: 0)] > "m" }).compactMap({ $0.counties }).flatMap({ $0 }) {
            print("validating " + regions.count.description + " regions...")
            try await validate_region_wikipedia_urls(regions: regions, seconds)
        }*/
        //try await validate_region_wikipedia_urls(regions: Locale.Region.allCases, seconds)
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
    
    private func test_change(cache: Bool) async throws {
        let string:String = "Japan; this string should find the mentioned countries: United States, (Canada) Russia! China? Taiwan; Kenya: Mexico, Luxembourg, Switzerland's, \"Egypt\", Poland, [Romania], the Bahamas, Sao Tome and Principe, and Zambia. Case Sensitive! Will not find (the new version will though) New zealand, central african republic, el Salvador, latv.a, FINLAND, \"Yemen\", OMan, dominican Republic, and Ireland"
        let _ = try await benchmark(key: "Locale.Region.getAllMentioned") {
            let _:[Locale.Region] = Locale.Region.getAllMentioned(in: string)
        }
        let _ = try await benchmark(key: "Locale.Region.getAllMentionedCached") {
            let _:[Locale.Region] = Locale.Region.getAllMentionedCached(in: string)
        }
        let mentioned:[Locale.Region] = Locale.Region.getAllMentioned(in: string)
        XCTAssert(mentioned.count == 24, "mentioned.count=\(mentioned.count);mentioned=\(mentioned.map({ $0.identifier }))")
    }
    private func test_benchmarks(cache: Bool) async throws {
        print("SwiftSovereignStatesTests;test_benchmarks;cache=" + cache.description)
        /*let array:Array<String> = ["homie", "got", "played"]
        try await benchmark_compare_is_faster(key1: "test1", {
            let _:String = array[0]
        }, key2: "test2", code2: {
            let _:String = array.first!
        })*/
        
        //return;
        
        let _ = try await benchmark(key: "SubdivisionsUnitedStates.init(_ description) [LosslessStringConvertible]") {
            let subdivision:SubdivisionsUnitedStates? = SubdivisionsUnitedStates.init("US-minnesota")
            XCTAssert(subdivision != nil)
        }
        let _ = try await benchmark(key: "SubdivisionsUnitedStates.init(rawValue) [RawRepresentable]") {
            let subdivision:SubdivisionsUnitedStates? = SubdivisionsUnitedStates.init(rawValue: "minnesota")
            XCTAssert(subdivision != nil)
        }
        let _ = try await benchmark(key: "CitiesUnitedStatesMinnesota.init(_ description) [LosslessStringConvertible]") {
            let city:CitiesUnitedStatesMinnesota? = CitiesUnitedStatesMinnesota.init("US-minnesota-kasson")
            XCTAssert(city != nil)
        }
        let _ = try await benchmark(key: "CitiesUnitedStatesMinnesota.init(rawValue) [RawRepresentable]") {
            let city:CitiesUnitedStatesMinnesota? = CitiesUnitedStatesMinnesota.init(rawValue: "kasson")
            XCTAssert(city != nil)
        }
        
        let _ = try await benchmark(key: "Locale.Region.unitedStates.valueOfSubdivisionIdentifier") {
            let subdivision:(any SovereignStateSubdivision)? = Locale.Region.unitedStates.valueOfSubdivisionIdentifier("minnesota")
            XCTAssert(subdivision != nil)
        }
        let _ = try await benchmark(key: "SovereignStateSubdivisions.valueOfCacheID") {
            let subdivision:(any SovereignStateSubdivision)? = SovereignStateSubdivisions.valueOfCacheID("US-minnesota", cache: cache)
            XCTAssert(subdivision != nil)
        }
        let _ = try await benchmark(key: "SovereignStateSubdivisions.valueOf") {
            let all:[any SovereignStateSubdivision] = SovereignStateSubdivisions.getAllMentioned("Minnesota", cache: cache)
            XCTAssert(all.count == 1)
        }
        let _ = try await benchmark(key: "SovereignStateSubdivisions.getAllMentioned") {
            let mentioned:[any SovereignStateSubdivision] = SovereignStateSubdivisions.getAllMentioned("Minnesota! Baku? (Limburg) Buenos Aires's, Zabul.", cache: cache)
            XCTAssert(mentioned.count >= 5)
        }
        
        let _ = try await benchmark(key: "SubdivisionsUnitedStates.minnesota.valueOfIdentifier") {
            let city:(any SovereignStateCity)? = SubdivisionsUnitedStates.minnesota.valueOfCityIdentifier("rochester")
            XCTAssert(city != nil)
        }
        let _ = try await benchmark(key: "SovereignStateCities.valueOfCacheID") {
            let city:(any SovereignStateCity)? = SovereignStateCities.valueOfCacheID("US-minnesota-rochester", cache: cache)
            XCTAssert(city != nil)
        }
        let _ = try await benchmark(key: "SovereignStateCities.valueOf") {
            let cities:[any SovereignStateCity] = SovereignStateCities.getAllMentioned("Rochester", cache: cache)
            XCTAssert(cities.count >= 1)
        }
        let _ = try await benchmark(key: "SovereignStateCities.getAllMentioned") {
            let cities:[any SovereignStateCity] = SovereignStateCities.getAllMentioned("Rochester! Minneapolis? (Dodge Center) Owatonna's, Dallas, Lakeside; Kansas City, Alpine.", cache: cache)
            XCTAssert(cities.count >= 8)
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
    
    func testFoundations() {
        let unitedStates:Locale.Region = Locale.Region.unitedStates
        let minnesota:any SovereignStateSubdivision = SubdivisionsUnitedStates.minnesota
        XCTAssertEqual(minnesota.rawValue, "minnesota")
        XCTAssertEqual(minnesota.cache_id, "US-minnesota")
        XCTAssertEqual(minnesota.country, unitedStates)
        XCTAssertEqual(SubdivisionsAfghanistan.badakhshan.country, Locale.Region.afghanistan)
        let kasson:any SovereignStateCity = CitiesUnitedStatesMinnesota.kasson
        XCTAssertEqual(kasson.rawValue, "kasson")
        XCTAssertEqual(kasson.cache_id, "US-minnesota-kasson")
        
        XCTAssert(Locale.Region.getAllMentioned(in: "").isEmpty)
        XCTAssert(SovereignStateSubdivisions.getAllMentioned("").isEmpty)
        XCTAssert(SovereignStateSubdivisions.valueOfCacheID("") == nil)
        XCTAssert(SovereignStateCities.getAllMentioned("").isEmpty)
        XCTAssert(SovereignStateCities.valueOfCacheID("") == nil)
        
        let test2:(any SovereignStateSubdivision)? = unitedStates.valueOfSubdivision("Minnesota")
        XCTAssert(minnesota.isEqual(test2))
        
        let encoder:JSONEncoder = JSONEncoder()
        let wrapper:TestEncodableStruct = TestEncodableStruct(country: Locale.Region.unitedStates, subdivision: SubdivisionsUnitedStates.minnesota, city: CitiesUnitedStatesMinnesota.kasson)
        let wrapper_data:Data = try! encoder.encode(wrapper)
        let wrapper_string:String = String(data: wrapper_data, encoding: .utf8)!
        let expected_string:String = """
{"country":"US","subdivision":"US-minnesota","city":"US-minnesota-kasson"}
"""
        XCTAssertEqual(expected_string, wrapper_string, "wrapper_string=" + wrapper_string)
    }
    func testCodable() throws {
        let unitedStates:Locale.Region = Locale.Region.unitedStates
        let encoded:Data = try JSONEncoder().encode(unitedStates)
        let encodedString:String = String(data: encoded, encoding: .utf8)!
        let targetString:String = "\"" + unitedStates.identifier + "\""
        XCTAssertEqual(encodedString, targetString, encodedString + " != " + targetString)
        
        let decoded:Locale.Region = try JSONDecoder().decode(Locale.Region.self, from: encoded)
        XCTAssertEqual(unitedStates, decoded)
        
        let subdivision:SubdivisionsUnitedStates = SubdivisionsUnitedStates.wisconsin
        let city:CitiesUnitedStatesMinnesota = CitiesUnitedStatesMinnesota.rochester
        let test:TestEncodableStruct = TestEncodableStruct(country: unitedStates, subdivision: subdivision, city: city)
        let encodedTest:Data = try JSONEncoder().encode(test)
        let encodedStringTest:String = String(data: encodedTest, encoding: .utf8)!
        let targetStringTest:String = "{\"country\":\"" + unitedStates.identifier + "\",\"subdivision\":\"" + subdivision.cache_id + "\",\"city\":\"" + city.cache_id + "\"}"
        XCTAssertEqual(encodedStringTest, targetStringTest, encodedStringTest + " != " + targetStringTest)
        
        let decodedTest:TestDecodableStruct = try JSONDecoder().decode(TestDecodableStruct.self, from: encodedTest)
        XCTAssertEqual(unitedStates, decodedTest.country)
        XCTAssert(subdivision.isEqual(decodedTest.subdivision), "subdivision.cache_id=" + subdivision.cache_id + ";decodedTest.subdivision.cache_id=" + decodedTest.subdivision.cache_id)
        XCTAssert(city.isEqual(decodedTest.city), "city.cache_id=" + city.cache_id + ";decodedTest.city.cache_id=" + decodedTest.city.cache_id)
    }
    func testWikipediaURLs() {
        var failedSubdivisions:[any SovereignStateSubdivision] = [any SovereignStateSubdivision]()
        var failedCities:[any SovereignStateCity] = [any SovereignStateCity]()
        for country in Locale.Region.allCases {
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
                let country:Locale.Region = subdivision.country
                print("SwiftSovereignStatesTests;testWikipediaURLs;failedSubdivisions;" + country.identifier + ";" + subdivision.rawValue + ";wikipediaURL=" + subdivision.wikipedia_url)
            }
        }
        XCTAssert(failedSubdivisions.count == 0)
        
        if failedCities.count > 0 {
            print("SwiftSovereignStatesTests;testWikipediaURLs;failedCities=" + failedCities.count.description)
            for city in failedCities {
                let subdivision = city.subdivision
                let country:Locale.Region = subdivision.country
                print("SwiftSovereignStatesTests;testWikipediaURLs;failedCities;" + country.identifier + ";" + subdivision.rawValue + ";" + city.rawValue + ";wikipediaURL=" + subdivision.wikipedia_url)
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
    
    func testCountryMentions() {
        let targetCountries:[Locale.Region] = [
            Locale.Region.japan,
            Locale.Region.unitedStates,
            Locale.Region.canada,
            Locale.Region.russia,
            Locale.Region.chinaMainland,
            Locale.Region.taiwan,
            Locale.Region.kenya,
            Locale.Region.mexico,
            Locale.Region.luxembourg,
            Locale.Region.switzerland,
            Locale.Region.egypt,
            Locale.Region.poland,
            Locale.Region.romania,
            Locale.Region.bahamas,
            Locale.Region.sãoToméPríncipe,
            Locale.Region.zambia,
            
            Locale.Region.newZealand,
            Locale.Region.centralAfricanRepublic,
            Locale.Region.elSalvador,
            Locale.Region.finland,
            Locale.Region.oman,
            Locale.Region.dominica,
        ]
        let mentionedString:String = "Japan; this string should find the mentioned countries: United States, (Canada) Russia! China? Taiwan; Kenya: Mexico, Luxembourg, Switzerland's, \"Egypt\", Poland, [Romania], the Bahamas, Sao Tome and Principe, and Zambia. Case Sensitive! Will not find New zealand, central african republic, el Salvador, latv.a, FINLAND, OMan, Dominica, and Ire?and."
        let mentioned:[Locale.Region] = Locale.Region.getAllMentioned(in: mentionedString)
        let notFound:[Locale.Region] = targetCountries.filter({ !mentioned.contains($0) })
        if !notFound.isEmpty {
            print("SwiftSovereignStatesTests;testCountryMentions;missing \(notFound.count);=[" + notFound.map({ $0.name() }).joined(separator: ",") + "]")
        }
        let notMentioned:[Locale.Region] = mentioned.filter({ !targetCountries.contains($0)})
        if !notMentioned.isEmpty {
            print("SwiftSovereignStatesTests;testCountryMentions;shouldn't be=[" + notMentioned.map({ $0.name() }).joined(separator: ",") + "]")
        }
        XCTAssertEqual(mentioned.count, targetCountries.count)
        
        XCTAssert(Locale.Region.getAllMentionedISOAlpha3(in: "USA").count == 1)
        XCTAssert(Locale.Region.getAllMentionedISOAlpha3(in: "usa").count == 0)
    }
    func testSubdivisionMentions() {
        let targetSubdivisions:[any SovereignStateSubdivision] = [SubdivisionsMexico.baja_california, SubdivisionsUnitedStates.california]
        let mentionedString:String = "Baja California; California!"
        let mentioned:[any SovereignStateSubdivision] = SovereignStateSubdivisions.getAllMentioned(mentionedString)
        let notFound:[any SovereignStateSubdivision] = targetSubdivisions.filter({ subdivision in
            return !mentioned.contains(where: { subdivision.isEqual($0) })
        })
        if !notFound.isEmpty {
            print("SwiftSovereignStatesTests;testSubdivisionMentions;missing \(notFound.count);=[" + notFound.map({ $0.rawValue }).joined(separator: ",") + "]")
        }
        let notMentioned:[any SovereignStateSubdivision] = mentioned.filter({ subdivision in
            return !targetSubdivisions.contains(where: { subdivision.isEqual($0) })
        })
        if !notMentioned.isEmpty {
            print("SwiftSovereignStatesTests;testSubdivisionMentions;shouldn't be=[" + notMentioned.map({ $0.rawValue }).joined(separator: ",") + "]")
        }
        XCTAssert(mentioned.count == targetSubdivisions.count, "mentioned != targetSubdivisions; mentioned.count=\(mentioned.count), targetSubdivisions.count=\(targetSubdivisions.count)")
    }
    func testCityMentions() {
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
        
        let mentioned:[any SovereignStateCity] = SovereignStateCities.getAllMentioned(mentionedString)
        XCTAssert(mentioned.count > 0, "mentioned.count == 0")
        let notFound:[any SovereignStateCity] = targetCities.filter({ city in
            return !mentioned.contains(where: { city.isEqual($0) })
        })
        let notMentioned:[any SovereignStateCity] = mentioned.filter({ city in
            return !targetCities.contains(where: { city.isEqual($0) })
        })
        if !notFound.isEmpty {
            print("SwiftSovereignStatesTests;testCityMentions;missing \(notFound.count);[" + notFound.map({ $0.cache_id }).joined(separator: ",") + "]")
        }
        if !notMentioned.isEmpty {
            print("SwiftSovereignStatesTests;testCityMentions;shouldn't be=[" + notMentioned.map({ $0.cache_id }).joined(separator: ",") + "]")
        }
        XCTAssert(mentioned.count == targetCities.count, "mentioned.count=\(mentioned.count), targetCities.count=\(targetCities.count)")
    }
    
    func testNeighbors() {
        let _:[any SovereignStateSubdivision]? = SubdivisionsUnitedStates.minnesota.neighbors
        
        var foundAtLeastOneNeighbors:Bool = false
        outer : for country in Locale.Region.allCases {
            if let subdivisions:[any SovereignStateSubdivision] = country.subdivisions {
                for subdivision in subdivisions {
                    foundAtLeastOneNeighbors = !subdivision.neighbors.isEmpty
                    if foundAtLeastOneNeighbors {
                        break
                    }
                }
            }
        }
        XCTAssert(foundAtLeastOneNeighbors, "foundAtLeastOneNeighbors==false")
    }
    
    func testCities() {
        let minnesota:any SovereignStateSubdivision = SubdivisionsUnitedStates.minnesota
        guard let cities:[any SovereignStateCity] = minnesota.cities else {
            XCTAssert(false, "minnesota.cities == nil")
            return
        }
        for city in cities {
            XCTAssert(city.subdivision.isEqual(minnesota), "minnesota city.subdivision != Minnesota")
        }
    }
}
extension SwiftSovereignStatesTests {
    func write(text: String, to fileNamed: String, folder: String = "SavedFiles", file_extension: String = "strings") {
        guard let path = NSSearchPathForDirectoriesInDomains(.documentDirectory, .userDomainMask, true).first,
              let writePath = NSURL(fileURLWithPath: path).appendingPathComponent(folder) else {
            return
        }
        try? FileManager.default.createDirectory(atPath: writePath.path, withIntermediateDirectories: true)
        let file = writePath.appendingPathComponent(fileNamed + "." + file_extension)
        try? text.write(to: file, atomically: false, encoding: String.Encoding.utf8)
    }
    private func test_localization() {
        let supported_language_codes:[String] = ["en"]
        for language in supported_language_codes {
            var missing:[String] = [String]()
            for country in Locale.Region.allCases {
                let string:String = country.name()
                if string.elementsEqual("nil") {
                    missing.append(country.identifier)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing \(missing.count) country names for " + missing.description)
            missing.removeAll()
            
            for subdivision in SovereignStateSubdivisions.all {
                let string:String = subdivision.name
                if string.elementsEqual("nil") {
                    missing.append(subdivision.cache_id)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing \(missing.count) level-1 subdivision names for " + missing.description)
            missing.removeAll()
            
            for city in SovereignStateCities.all {
                let string:String = city.name
                if string.elementsEqual("nil") {
                    missing.append(city.cache_id)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing \(missing.count) level-3 subdivision names for " + missing.description)
            missing.removeAll()
            
            for currency in Currency.allCases {
                let string:String = currency.name()
                if string.elementsEqual("nil") {
                    missing.append(currency.rawValue)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing \(missing.count) currency_names for " + missing.description)
            missing.removeAll()
            
            for type in SovereignStateSubdivisionType.allCases {
                let string:String = SwiftSovereignStateLocalization.get_release_subdivision_type_name_singular(type)
                if string.elementsEqual("nil") {
                    missing.append(type.rawValue)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing \(missing.count) subdivision_types_name_singular for " + missing.description)
            missing.removeAll()
            for type in SovereignStateSubdivisionType.allCases {
                let string:String = SwiftSovereignStateLocalization.get_release_subdivision_type_name_plural(type)
                if string.elementsEqual("nil") {
                    missing.append(type.rawValue)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing \(missing.count) subdivision_types_name_plural for " + missing.description)
            missing.removeAll()
        }
    }
}

private struct WikipediaAPIResponse : Codable {
    let extract:String?
}

private struct TestEncodableStruct<T: SovereignStateSubdivision, U: SovereignStateCity> : Encodable {
    let country:Locale.Region
    let subdivision:T
    let city:U
}

private struct TestDecodableStruct : Decodable {
    let country:Locale.Region
    let subdivision:SovereignStateSubdivisionWrapper
    let city:SovereignStateCityWrapper
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
