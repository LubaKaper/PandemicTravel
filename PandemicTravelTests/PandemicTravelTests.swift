//
//  PandemicTravelTests.swift
//  PandemicTravelTests
//
//  Created by Liubov Kaper  on 9/19/20.
//  Copyright © 2020 Luba Kaper. All rights reserved.
//

import XCTest
@testable import PandemicTravel

class PandemicTravelTests: XCTestCase {
    
    
    
    func testStatesModel() {
        let json = """
        [
        {
            "date": "2020-10-05",
            "state": "New York",
            "fips": "36",
            "cases": 470244,
            "deaths": 32827,
            "updated": 1604518682919
        },
        {
            "date": "2020-10-06",
            "state": "New York",
            "fips": "36",
            "cases": 471638,
            "deaths": 32836,
            "updated": 1604518682919
        },
        {
            "date": "2020-10-07",
            "state": "New York",
            "fips": "36",
            "cases": 472994,
            "deaths": 32850,
            "updated": 1604518682920
        },
        {
            "date": "2020-10-08",
            "state": "New York",
            "fips": "36",
            "cases": 474829,
            "deaths": 32859,
            "updated": 1604518682920
        }
        ]
        """.data(using: .utf8)!
        
        let expectedFirstState = "New York"
        
        do {
            let states = try JSONDecoder().decode([DateData].self, from: json)
            XCTAssertEqual(expectedFirstState, states[0].state)
        } catch {
            XCTFail("decoding error: \(error)")
        }
        
    }
    
    func testCountryModel() {
        let json = """
        {
            "country": "Russia",
            "province": [
                "mainland"
            ],
            "timeline": {
                "cases": {
                    "10/27/20": 1537142,
                    "10/28/20": 1553028,
                    "10/29/20": 1570446,
                    "10/30/20": 1588433,
                    "10/31/20": 1606267,
                    "11/1/20": 1624648,
                    "11/2/20": 1642665,
                    "11/3/20": 1661096,
                    "11/4/20": 1680579,
                    "11/5/20": 1699695
                },
                "deaths": {
                    "10/27/20": 26409,
                    "10/28/20": 26752,
                    "10/29/20": 27111,
                    "10/30/20": 27462,
                    "10/31/20": 27787,
                    "11/1/20": 28026,
                    "11/2/20": 28264,
                    "11/3/20": 28611,
                    "11/4/20": 28996,
                    "11/5/20": 29285
                },
                "recovered": {
                    "10/27/20": 1152848,
                    "10/28/20": 1164915,
                    "10/29/20": 1179465,
                    "10/30/20": 1193867,
                    "10/31/20": 1208440,
                    "11/1/20": 1218619,
                    "11/2/20": 1228921,
                    "11/3/20": 1244012,
                    "11/4/20": 1259194,
                    "11/5/20": 1271349
                }
            }
        }
        """.data(using: .utf8)!
        
        let expectedCasesForNovemberFive = 1699695
        
        do {
            let country = try JSONDecoder().decode(CountryData.self, from: json)
            XCTAssertEqual(expectedCasesForNovemberFive, country.timeline?.cases["11/5/20"] ?? 0)
            print(country.timeline?.cases["11/5/20"] ?? 0)
        } catch {
            XCTFail("decoding error: \(error)")
        }
    }

    override func setUpWithError() throws {
        // Put setup code here. This method is called before the invocation of each test method in the class.
    }

    override func tearDownWithError() throws {
        // Put teardown code here. This method is called after the invocation of each test method in the class.
    }

    func testExample() throws {
        // This is an example of a functional test case.
        // Use XCTAssert and related functions to verify your tests produce the correct results.
    }

    func testPerformanceExample() throws {
        // This is an example of a performance test case.
        self.measure {
            // Put the code you want to measure the time of here.
        }
    }

}
