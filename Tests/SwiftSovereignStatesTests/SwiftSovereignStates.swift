import XCTest
@testable import SwiftSovereignStates

final class SwiftSovereignStatesTests: XCTestCase {
    func testExample() throws {
        let unitedStates:Country = Country.united_states
        let targetSubdivision:String = "Minnesota", swiftVersion:String, equalMinnesotas:Bool
        
        #if swift(<5.7)
        swiftVersion = "<5.7"
        let test1:SovereignStateSubdivisionWrapper = SubdivisionsUnitedStates.minnesota.wrapped()
        let test2:SovereignStateSubdivisionWrapper! = unitedStates.valueOfSubdivision(targetSubdivision)
        equalMinnesotas = test1.isEqual(test2)
        var failed:[SovereignStateSubdivisionWrapper] = [SovereignStateSubdivisionWrapper]()
        #else
        swiftVersion = ">=5.7"
        let test1:any SovereignStateSubdivision = SubdivisionsUnitedStates.minnesota
        let test2:(any SovereignStateSubdivision)! = unitedStates.valueOfSubdivision(targetSubdivision)
        equalMinnesotas = test1.isEqual(test2)
        var failed:[any SovereignStateSubdivision] = [any SovereignStateSubdivision]()
        #endif
        
        XCTAssert(equalMinnesotas)
        
        let countries:[Country] = Country.allCases
        for country in countries {
            if let subdivisions = country.getSubdivisions() {
                for subdivision in subdivisions {
                    let wikipediaURL:String = subdivision.getWikipediaURL()
                    if wikipediaURL.contains(" ") {
                        failed.append(subdivision)
                    }
                }
            }
        }
        
        print("SwiftSovereignStatesTests;" + swiftVersion + ";failed=" + failed.count.description)
        for subdivision in failed {
            print("SwiftSovereignStatesTests;failed;" + swiftVersion + ";" + subdivision.getCountry().rawValue + ";" + subdivision.rawValue + ";shortName=" + subdivision.getShortName() + ";wikipediaURL=" + subdivision.getWikipediaURL())
        }
        XCTAssert(failed.count == 0)
        
        failed.removeAll()
        testMentions()
    }
    
    private func testMentions() {
        let targetCountries:[Country] = [Country.japan, Country.united_states, Country.canada, Country.russia, Country.china, Country.taiwan, Country.kenya, Country.mexico, Country.luxembourg, Country.switzerland, Country.egypt, Country.poland, Country.bahamas, Country.sao_tome_and_principe, Country.zambia]
        let mentionedString:String = "Japan; this string should find the mentioned countries: United States, (Canada) Russia! China? Taiwan; Kenya: Mexico, Luxembourg, Switzerland's, \"Egypt\", Poland, the Bahamas, Sao Tome and Principe, and Zambia. Case Sensitive! Will not find New zealand, central african republic, el Salvador, latv.a, FINLAND, OMan, [Romania], Dominican, and Ire?and."
        let mentioned:[Country] = Country.getAllMentioned(mentionedString) ?? [Country]()
        let notFound:[Country] = targetCountries.filter({ !mentioned.contains($0) })
        if !notFound.isEmpty {
            print("SwiftSovereignStatesTests;testMentions;missing=[" + notFound.map({ $0.rawValue }).joined(separator: ",") + "]")
        }
        let notMentioned:[Country] = mentioned.filter({ !targetCountries.contains($0)})
        if !notMentioned.isEmpty {
            print("SwiftSovereignStatesTests;testMentions;shouldn't be=[" + notMentioned.map({ $0.rawValue }).joined(separator: ",") + "]")
        }
        XCTAssert(mentioned.count == targetCountries.count)
    }
}
