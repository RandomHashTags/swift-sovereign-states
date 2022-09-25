import XCTest
@testable import SwiftSovereignStates
import QuartzCore

final class SwiftSovereignStatesTests: XCTestCase {
    func testExample() async throws {
        //await benchmarkSubdivisions()
        //await benchmarkCities()
        
        testWikipediaURLs()
        testCountryMentions()
        testCityMentions()
        testNeighbors()
        testCities()
    }
    
    private func benchmarkSubdivisions() async {
        await benchmarkSubdivisions(valueOf: false, parallel: true)
        await benchmarkSubdivisions(valueOf: true, parallel: true)
        
        await benchmarkSubdivisions(valueOf: false, parallel: false)
        await benchmarkSubdivisions(valueOf: true, parallel: false)
    }
    private func benchmarkSubdivisions(valueOf: Bool, parallel: Bool) async {
        await benchmarkAsync(valueOf: valueOf, parallel: parallel, {
            let string:String
            if valueOf {
                string = "Minnesota"
                if parallel {
                    let _:[any SovereignStateSubdivision]? = await SovereignStateSubdivisions.valueOfParallel(string, cache: false)
                } else {
                    let _:[any SovereignStateSubdivision]? = SovereignStateSubdivisions.valueOf(string, cache: false)
                }
            } else {
                string = "Minnesota! Baja California, California? (Wisconsin) Texas's, Maine, New York; Kentucky."
                if parallel {
                    let _:[any SovereignStateSubdivision]? = await SovereignStateSubdivisions.getAllMentionedParallel(string, cache: false)
                } else {
                    let _:[any SovereignStateSubdivision]? = SovereignStateSubdivisions.getAllMentioned(string, cache: false)
                }
            }
        })
    }
    private func benchmarkCities() async {
        await benchmarkCities(valueOf: false, parallel: true)
        await benchmarkCities(valueOf: true, parallel: true)
        
        await benchmarkCities(valueOf: false, parallel: false)
        await benchmarkCities(valueOf: true, parallel: false)
    }
    private func benchmarkCities(valueOf: Bool, parallel: Bool) async {
        await benchmarkAsync(valueOf: valueOf, parallel: parallel, {
            let string:String
            if valueOf {
                string = "Kasson"
                if parallel {
                    let _:[any SovereignStateCity]? = await SovereignStateCities.valueOfParallel(string, cache: false)
                } else {
                    let _:[any SovereignStateCity]? = SovereignStateCities.valueOf(string, cache: false)
                }
            } else {
                string = "Kasson! Minneapolis? (Dodge Center) Owatonna's, Dallas, Lakeside; Kansas City, Alpine."
                if parallel {
                    let _:[any SovereignStateCity]? = await SovereignStateCities.getAllMentionedParallel(string, cache: false)
                } else {
                    let _:[any SovereignStateCity]? = SovereignStateCities.getAllMentioned(string, cache: false)
                }
            }
        })
    }
    private func benchmarkAsync(valueOf: Bool, parallel: Bool, _ code: () async -> Void) async {
        var average:Double = 0, minimum:Double = 10000, maximum:Double = 0
        let iterations:Int = 50
        for _ in 0..<iterations {
            let elapsed:Double = await checkElapsedTime(code)
            average += elapsed
            if elapsed < minimum {
                minimum = elapsed
            }
            if elapsed > maximum {
                maximum = elapsed
            }
        }
        print("==================================================")
        print((valueOf ? "VALUE_OF" : "ALL_MENTIONED") + (parallel ? "_PARALLEL" : ""))
        print("MIN=" + minimum.description + "ms")
        print("MAX=" + maximum.description + "ms")
        print("AVERAGE=" + (average / Double(iterations)).description + "ms")
        print("==================================================")
    }
    private func checkElapsedTime(_ code: () async -> Void) async -> Double {
        let now:Double = CACurrentMediaTime()
        await code()
        return (CACurrentMediaTime()-now) * 1_000
    }
    
    private func testWikipediaURLs() {
        let unitedStates:Country = Country.united_states
        let test1:any SovereignStateSubdivision = SubdivisionsUnitedStates.minnesota
        let test2:(any SovereignStateSubdivision)! = unitedStates.valueOfSubdivision("Minnesota")
        let equalMinnesotas:Bool = test1.isEqual(test2)
        var failedSubdivisions:[any SovereignStateSubdivision] = [any SovereignStateSubdivision]()
        var failedCities:[any SovereignStateCity] = [any SovereignStateCity]()
        
        XCTAssert(equalMinnesotas)
        
        let countries:[Country] = Country.allCases
        for country in countries {
            if let subdivisions = country.getSubdivisions() {
                for subdivision in subdivisions {
                    let wikipediaURL:String = subdivision.getWikipediaURL()
                    if wikipediaURL.contains(" ") {
                        failedSubdivisions.append(subdivision)
                    }
                    if let cities = subdivision.getCities() {
                        for city in cities {
                            if city.getWikipediaURL().contains(" ") {
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
    
    private func testCountryMentions() {
        let targetCountries:[Country] = [Country.japan, Country.united_states, Country.canada, Country.russia, Country.china, Country.taiwan, Country.kenya, Country.mexico, Country.luxembourg, Country.switzerland, Country.egypt, Country.poland, Country.bahamas, Country.sao_tome_and_principe, Country.zambia]
        let mentionedString:String = "Japan; this string should find the mentioned countries: United States, (Canada) Russia! China? Taiwan; Kenya: Mexico, Luxembourg, Switzerland's, \"Egypt\", Poland, the Bahamas, Sao Tome and Principe, and Zambia. Case Sensitive! Will not find New zealand, central african republic, el Salvador, latv.a, FINLAND, OMan, [Romania], Dominican, and Ire?and."
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
    }
    private func testCityMentions() {
        let minneapolis = SubdivisionsUnitedStates.minnesota.valueOfCity("Minneapolis")
        XCTAssert(minneapolis != nil)
        
        let lakeside = SubdivisionsUnitedStates.texas.valueOfCity("Lakeside")
        XCTAssert(lakeside != nil && lakeside!.count == 2)
        
        let targetCities:[any SovereignStateCity] = [
            CitiesUnitedStatesMinnesota.rochester, CitiesUnitedStatesTexas.rochester, CitiesUnitedStatesKentucky.rochester,
            CitiesUnitedStatesSouthDakota.naples, CitiesUnitedStatesTexas.naples, CitiesUnitedStatesUtah.naples,
            CitiesUnitedStatesTexas.dallas, CitiesUnitedStatesSouthDakota.dallas,
            CitiesUnitedStatesIdaho.oakley, CitiesUnitedStatesUtah.oakley,
            CitiesUnitedStatesIowa.des_moines, CitiesUnitedStatesWashington.des_moines,
            
            CitiesUnitedStatesMinnesota.kasson, CitiesUnitedStatesMinnesota.minneapolis, CitiesUnitedStatesMinnesota.owatonna, CitiesUnitedStatesMontana.anaconda, CitiesUnitedStatesNorthDakota.edmore, CitiesUnitedStatesMontana.winifred, CitiesUnitedStatesIdaho.lost_river, CitiesUnitedStatesSouthDakota.summit, CitiesUnitedStatesNorthDakota.upham, CitiesUnitedStatesMinnesota.st_leo, CitiesUnitedStatesTexas.mclean
        ]
        
        let mentionedString:String = "Rochester; this string should find the mentioned cities: Minneapolis, (Kasson) Owatonna! Dallas? Des Moines; Anaconda: Oakley, Naples, Edmore's, \"Winifred\", Lost River, Summit, Upham, St. Leo, and McLean. Case Sensitive! Will not find des Moines, sum.it, ROCHESTER, EDmore, [Faribault], and C?shing."
        
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
            print("SwiftSovereignStatesTests;testCityMentions;missing " + notFound.count.description + ";[" + notFound.map({ $0.getIdentifier() }).joined(separator: ",") + "]")
        }
        if !notMentioned.isEmpty {
            print("SwiftSovereignStatesTests;testCityMentions;shouldn't be=[" + notMentioned.map({ $0.getIdentifier() }).joined(separator: ",") + "]")
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
