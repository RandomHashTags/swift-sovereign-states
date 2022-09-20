import XCTest
@testable import SwiftSovereignStates

final class SwiftSovereignStatesTests: XCTestCase {
    func testExample() throws {
        let unitedStates:Country = Country.united_states
        let targetSubdivision:String = "Minnesota", swiftVersion:String
        
        #if swift(<5.7)
        let _:SovereignStateSubdivisionWrapper = SubdivisionsUnitedStates.minnesota.wrapped()
        let _:SovereignStateSubdivisionWrapper? = unitedStates.valueOfSubdivision(targetSubdivision)
        swiftVersion = "<5.7"
        var failed:[SovereignStateSubdivisionWrapper] = [SovereignStateSubdivisionWrapper]()
        #else
        let _:any SovereignStateSubdivision = SubdivisionsUnitedStates.minnesota
        let _:(any SovereignStateSubdivision)? = unitedStates.valueOfSubdivision(targetSubdivision)
        swiftVersion = ">=5.7"
        var failed:[any SovereignStateSubdivision] = [any SovereignStateSubdivision]()
        #endif
        
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
        
        for subdivision in failed {
            print("SwiftSovereignStatesTests;failed;" + swiftVersion + ";" + subdivision.getCountry().rawValue + ";" + subdivision.rawValue + ";shortName=" + subdivision.getShortName() + ";wikipediaURL=" + subdivision.getWikipediaURL())
        }
        
        print("SwiftSovereignStatesTests;" + swiftVersion + ";failed=" + failed.count.description)
        XCTAssert(failed.count == 0)
        
        failed.removeAll()
    }
}
