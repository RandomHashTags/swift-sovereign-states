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
        
        /*let seconds:UInt64 = 1 * 1_000_000_000*/
        //try await validate_region_wikipedia_urls(regions: Locale.Region.allCases, seconds)
        //try await validate_region_wikipedia_urls(regions: SovereignStateSubdivisions.all, seconds)
        //try await validate_region_wikipedia_urls(regions: SovereignStateCities.all, seconds)
        
        do_measurement()
    }
    
    private func do_measurement() {
        let countries:String = "Japan; this string should find the mentioned countries: United States, (Canada) Russia! China? Taiwan; Kenya: Mexico, Luxembourg, Switzerland's, \"Egypt\", Poland, [Romania], the Bahamas, Sao Tome and Principe, and Zambia. New zealand, central african republic, el Salvador, latv.a, FINLAND, OMan, and Ire?and."
        
        let subdivisions:String = "Baja California; California!"
        let cities:String = "Rochester; this string should find the mentioned cities: Minneapolis, (Kasson) Owatonna! [Faribault] Dallas? Des Moines; Anaconda: Oakley, Naples, Edmore's, \"Winifred\", Lost River, Summit, Upham, St. Leo, and McLean. Will not find C?shing."
        
        let metrics:[XCTMetric] = [XCTClockMetric(), XCTMemoryMetric()]
        let iterations:XCTMeasureOptions = XCTMeasureOptions.default
        iterations.iterationCount = 100
        
        let options:String.CompareOptions = [.caseInsensitive, .diacriticInsensitive]
        
        switch 0 {
        case 0:
            measure(metrics: metrics, options: iterations) {
                let _:[Locale.Region] = Locale.Region.getAllMentioned(in: countries, options: options)
            }
            break
        case 6:
            break
            
        case 1000:
            /*measure(metrics: metrics, options: iterations) {
                let _ = cities.filter({ $0 == "-" })
            }*/
            break
        default:
            break
        }
    }
    
    func test_regions() {
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
            Locale.Region.oman
        ]
        let string:String = "Japan; this string should find the mentioned countries: United States, (Canada) Russia! China? Taiwan; Kenya: Mexico, Luxembourg, Switzerland's, \"Egypt\", Poland, [Romania], the Bahamas, Sao Tome and Principe, and Zambia. New zealand, central african republic, el Salvador, latv.a, FINLAND, OMan, and Ire?and."
        let mentioned:[Locale.Region] = Locale.Region.getAllMentioned(in: string, options: [.caseInsensitive, .diacriticInsensitive])
        let notFound:[Locale.Region] = targetCountries.filter({ !mentioned.contains($0) })
        if !notFound.isEmpty {
            print("SwiftSovereignStatesTests;testCountryMentions;missing \(notFound.count);=[" + notFound.map({ $0.name() }).joined(separator: ",") + "]")
        }
        let notMentioned:[Locale.Region] = mentioned.filter({ !targetCountries.contains($0)})
        if !notMentioned.isEmpty {
            print("SwiftSovereignStatesTests;testCountryMentions;shouldn't be=[" + notMentioned.map({ $0.name() }).joined(separator: ",") + "]")
        }
        XCTAssertEqual(mentioned.count, targetCountries.count, "mentioned=" + mentioned.map({ $0.name() }).description)
        
        XCTAssertEqual(Locale.Region.getAllMentionedISOAlpha3(in: "USA").count, 1)
        XCTAssertEqual(Locale.Region.getAllMentionedISOAlpha3(in: "usa").count, 0)
    }
}
extension SwiftSovereignStatesTests {
    private func validate_region_wikipedia_urls(regions: [any SovereignRegion], _ seconds: UInt64) async throws {
        for region in regions {
            await verifyWikipediaURL(region)
            try await Task.sleep(nanoseconds: seconds)
        }
    }
    private func verifyWikipediaURL(_ region: any SovereignRegion) async {
        let url:String = region.wikipediaURL
        let slug:String = String(url.split(separator: "/").last!)
        let valid:Bool = await getSummaryAndImageURL(slug: slug)
        XCTAssert(valid, "invalid Wikipedia URL for sovereign region with cache id \"" + region.cacheID + "\"; url=\"" + url + "\"; slug=\"" + slug + "\"")
    }
    private func getSummaryAndImageURL(slug: String) async -> Bool {
        let url:String = "https://en.wikipedia.org/api/rest_v1/page/summary/" + slug
        guard let json:WikipediaAPIResponse = await make_request(url: url) else { return false }
        return json.extract != nil
    }
    
    private struct WikipediaAPIResponse : Codable {
        let extract:String?
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
    func test_localization() {
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
            
            for currency in Currency.allCases {
                let string:String = currency.name()
                if string.elementsEqual("nil") {
                    missing.append(currency.rawValue)
                }
            }
            XCTAssert(missing.isEmpty, "test_localization; language=\"" + language + "\"; missing \(missing.count) currency_names for " + missing.description)
            missing.removeAll()
        }
    }
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


extension SwiftSovereignStatesTests {
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
                        identifier = name.replacingOccurrences(of: " †", with: "").replacingOccurrences(of: "†", with: "").components(separatedBy: " (")[0].lowercased()
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
}

extension SwiftSovereignStatesTests {
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
}
