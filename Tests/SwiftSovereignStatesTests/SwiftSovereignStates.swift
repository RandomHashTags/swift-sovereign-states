import XCTest
import SwiftSovereignStates
import QuartzCore

final class SwiftSovereignStatesTests: XCTestCase {
    func testExample() async throws {
        let _:[[String]] = Country.allCases.map({ $0.getKeywords() })
        let _:[[String]] = SovereignStateSubdivisions.all.map({ $0.getKeywords() })
        let _:[[String]] = SovereignStateCities.all.map({ $0.getKeywords() })
        
        let cache:Bool = true
        print("SwiftSovereignStatesTests;testExample;cache=" + cache.description)
        try await benchmark(key: "Country.valueOfCacheID") {
            let _:Country? = Country.valueOfCacheID("united_states", cache: cache)
        }
        try await benchmark(key: "Country.init(_ description) [LosslessStringConvertible]") {
            let _:Country? = Country.init("mexico")
        }
        try await benchmark(key: "Country.init(rawValue) [RawRepresentable]") {
            let _:Country? = Country.init(rawValue: "canada")
        }
        try await benchmark(key: "testCodable") {
            try self.testCodable()
        }
        
        try await benchmark(key: "SovereignStateSubdivisions.valueOf") {
            let _:[any SovereignStateSubdivision]? = SovereignStateSubdivisions.valueOf("Minnesota", cache: cache)
        }
        try await benchmark(key: "SovereignStateSubdivisions.getAllMentionedParallel") {
            let _:[any SovereignStateSubdivision]? = await SovereignStateSubdivisions.getAllMentionedParallel("Wisconsin! Baku? (Limburg) Buenos Aires's, Zabul", cache: cache)
        }
        try await benchmark(key: "SovereignStateSubdivisions.getAllMentioned") {
            let _:[any SovereignStateSubdivision]? = SovereignStateSubdivisions.getAllMentioned("Minnesota! Baku? (Limburg) Buenos Aires's, Zabul", cache: cache)
        }
        try await benchmark(key: "SovereignStateSubdivisions.valueOfCacheID") {
            let _:(any SovereignStateSubdivision)? = SovereignStateSubdivisions.valueOfCacheID("united_states_minnesota", cache: cache)
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
        }
        
        /*measure {
            //let _:[any SovereignStateSubdivision]? = SovereignStateSubdivisions.getAllMentioned("Minnesota! Baja California, California? (Wisconsin) Texas's, Maine, New York; Kentucky.", cache: false)
            //let _:[any SovereignStateSubdivision]? = SovereignStateSubdivisions.valueOf("Minnesota", cache: false)
            
            //let _:[any SovereignStateCity]? = SovereignStateCities.getAllMentioned("Kasson! Minneapolis? (Dodge Center) Owatonna's, Dallas, Lakeside; Kansas City, Alpine.", cache: false)
            let _:[any SovereignStateCity]? = SovereignStateCities.valueOf("Kasson", cache: false)
            //let _:Country? = Country.valueOfIdentifier("united_states")
        }*/
        
        testFoundations()
        try testCodable()
        testWikipediaURLs()
        testCountryMentions()
        testSubdivisionMentions()
        testCityMentions()
        testNeighbors()
        testCities()
        
        //let seconds:UInt64 = 500_000_000
        //try await validateCountryWikipediaURLs(seconds)
        //try await validateSubdivisionWikipediaURLs(seconds)
        //try await validateCityWikipediaURLs(seconds)
    }
    
    private func benchmark(key: String, _ code: @escaping () async throws -> Void) async throws {
        var timings:[Double] = [Double]()
        for _ in 1...1_000 {
            let started:Double = CACurrentMediaTime()
            try await code()
            let elapsed:Double = (CACurrentMediaTime() - started) * 1_000
            timings.append(elapsed)
        }
        timings = timings.sorted(by: { $0 < $1 })
        let median:Double = timings[timings.count/2]
        let sum:Double = timings.reduce(0, +)
        let average:Double = sum / Double(timings.count)
        let key:String = key + (1...(65-key.count)).map({ _ in " " }).joined()
        
        let formatter:NumberFormatter = NumberFormatter()
        formatter.numberStyle = .decimal
        formatter.maximumFractionDigits = 20
        
        let average_time_elapsed:String = formatter.string(for: average)!
        let minimum_time_elapsed:String = formatter.string(for: timings.first!)!
        let maximum_time_elapsed:String = formatter.string(for: timings.last!)!
        let median_time_elapsed:String = formatter.string(for: median)!
        let total_time_elapsed:String = formatter.string(for: sum)!
        
        print("SwiftSovereignStates;benchmark( " + key + "| min=" + minimum_time_elapsed + "ms | max=" + maximum_time_elapsed + "ms | median=" + median_time_elapsed + "ms | average=" + average_time_elapsed + "ms | total=" + total_time_elapsed + "ms")
    }
    
    private func testFoundations() {
        let unitedStates:Country = Country.united_states
        XCTAssert(unitedStates.getIdentifier().elementsEqual("united_states"))
        XCTAssert(unitedStates.getCacheID().elementsEqual("united_states"))
        let minnesota:any SovereignStateSubdivision = SubdivisionsUnitedStates.minnesota
        XCTAssert(minnesota.getIdentifier().elementsEqual("minnesota"))
        XCTAssert(minnesota.getCacheID().elementsEqual("united_states_minnesota"))
        let kasson:any SovereignStateCity = CitiesUnitedStatesMinnesota.kasson
        XCTAssert(kasson.getIdentifier().elementsEqual("kasson"))
        XCTAssert(kasson.getCacheID().elementsEqual("united_states_minnesota_kasson"))
        
        XCTAssert(Country.valueOf("") == nil)
        XCTAssert(Country.valueOfCacheID("") == nil)
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
    }
    private func testCodable() throws {
        let unitedStates:Country = Country.united_states
        let encoded:Data = try JSONEncoder().encode(unitedStates)
        let encodedString:String = String(data: encoded, encoding: .utf8)!
        let targetString:String = "\"" + unitedStates.getCacheID() + "\""
        XCTAssert(encodedString.elementsEqual(targetString), encodedString + " != " + targetString)
        
        let decoded:Country = try JSONDecoder().decode(Country.self, from: encoded)
        XCTAssert(unitedStates == decoded)
        
        let subdivision:SubdivisionsUnitedStates = SubdivisionsUnitedStates.wisconsin
        let city:CitiesUnitedStatesMinnesota = CitiesUnitedStatesMinnesota.rochester
        let test:TestEncodableStruct = TestEncodableStruct(country: unitedStates, subdivision: subdivision, city: city)
        let encodedTest:Data = try JSONEncoder().encode(test)
        let encodedStringTest:String = String(data: encodedTest, encoding: .utf8)!
        let targetStringTest:String = "{\"country\":\"" + unitedStates.getCacheID() + "\",\"subdivision\":\"" + subdivision.getCacheID() + "\",\"city\":\"" + city.getCacheID() + "\"}"
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
                    if let cities:[any SovereignStateCity] = subdivision.getCities() {
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
                let country:Country = subdivision.getCountry()
                print("SwiftSovereignStatesTests;testWikipediaURLs;failedSubdivisions;" + country.getIdentifier() + ";" + subdivision.getIdentifier() + ";wikipediaURL=" + subdivision.getWikipediaURL())
            }
        }
        XCTAssert(failedSubdivisions.count == 0)
        
        if failedCities.count > 0 {
            print("SwiftSovereignStatesTests;testWikipediaURLs;failedCities=" + failedCities.count.description)
            for city in failedCities {
                let subdivision = city.getSubdivision()
                let country:Country = subdivision.getCountry()
                print("SwiftSovereignStatesTests;testWikipediaURLs;failedCities;" + country.getIdentifier() + ";" + subdivision.getIdentifier() + ";" + city.getIdentifier() + ";wikipediaURL=" + subdivision.getWikipediaURL())
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
        let msg:String = "invalid Wikipedia URL for sovereign region with cache id \"" + region.getCacheID() + "\"; url=\"" + url + "\"; slug=\"" + slug + "\""
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
        do {
            return try await withCheckedThrowingContinuation({ continuation in
                let dataTask:URLSessionDataTask = URLSession.shared.dataTask(with: request) { data, response, error in
                    guard let data:Data = data, let _:URLResponse = response else {
                        let error:Error = error ?? URLError(.badServerResponse)
                        return continuation.resume(throwing: error)
                    }
                    continuation.resume(returning: data)
                }
                dataTask.resume()
            })
        } catch {
            return nil
        }
    }
    
    private func testCountryMentions() {
        let targetCountries:[Country] = [Country.japan, Country.united_states, Country.canada, Country.russia, Country.china, Country.taiwan, Country.kenya, Country.mexico, Country.luxembourg, Country.switzerland, Country.egypt, Country.poland, Country.romania, Country.bahamas, Country.sao_tome_and_principe, Country.zambia]
        let mentionedString:String = "Japan; this string should find the mentioned countries: United States, (Canada) Russia! China? Taiwan; Kenya: Mexico, Luxembourg, Switzerland's, \"Egypt\", Poland, [Romania], the Bahamas, Sao Tome and Principe, and Zambia. Case Sensitive! Will not find New zealand, central african republic, el Salvador, latv.a, FINLAND, OMan, Dominican, and Ire?and."
        let mentioned:[Country] = Country.getAllMentioned(mentionedString) ?? [Country]()
        let notFound:[Country] = targetCountries.filter({ !mentioned.contains($0) })
        if !notFound.isEmpty {
            print("SwiftSovereignStatesTests;testCountryMentions;missing " + notFound.count.description + ";=[" + notFound.map({ $0.getIdentifier() }).joined(separator: ",") + "]")
        }
        let notMentioned:[Country] = mentioned.filter({ !targetCountries.contains($0)})
        if !notMentioned.isEmpty {
            print("SwiftSovereignStatesTests;testCountryMentions;shouldn't be=[" + notMentioned.map({ $0.getIdentifier() }).joined(separator: ",") + "]")
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
            print("SwiftSovereignStatesTests;testSubdivisionMentions;missing " + notFound.count.description + ";=[" + notFound.map({ $0.getIdentifier() }).joined(separator: ",") + "]")
        }
        let notMentioned:[any SovereignStateSubdivision] = mentioned.filter({
            let subdivision:any SovereignStateSubdivision = $0
            return !targetSubdivisions.contains(where: { subdivision.isEqual($0) })
        })
        if !notMentioned.isEmpty {
            print("SwiftSovereignStatesTests;testSubdivisionMentions;shouldn't be=[" + notMentioned.map({ $0.getIdentifier() }).joined(separator: ",") + "]")
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
            print("SwiftSovereignStatesTests;testCityMentions;missing " + notFound.count.description + ";[" + notFound.map({ $0.getCacheID() }).joined(separator: ",") + "]")
        }
        if !notMentioned.isEmpty {
            print("SwiftSovereignStatesTests;testCityMentions;shouldn't be=[" + notMentioned.map({ $0.getCacheID() }).joined(separator: ",") + "]")
        }
        XCTAssert(mentioned.count == targetCities.count, "mentioned.count=" + mentioned.count.description + ", targetCities.count=" + targetCities.count.description)
    }
    
    private func testNeighbors() {
        let _:[any SovereignStateSubdivision]? = SubdivisionsUnitedStates.minnesota.getNeighbors()
        
        var foundAtLeastOneNeighbors:Bool = false
        outer : for country in Country.allCases {
            if let subdivisions:[any SovereignStateSubdivision] = country.getSubdivisions() {
                for subdivision in subdivisions {
                    if let _:[any SovereignStateSubdivision] = subdivision.getNeighbors() {
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
        guard let cities:[any SovereignStateCity] = minnesota.getCities() else {
            XCTAssert(false, "minnesota.getCities() == nil")
            return
        }
        for city in cities {
            XCTAssert(city.getSubdivision().isEqual(minnesota), "minnesota city.getSubdivision != Minnesota")
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
