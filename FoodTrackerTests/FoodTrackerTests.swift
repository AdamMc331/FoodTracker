//
//  FoodTrackerTests.swift
//  FoodTrackerTests
//
//  Created by Adam McNeilly on 12/9/16.
//  Copyright © 2016 Adam McNeilly. All rights reserved.
//

import XCTest
@testable import FoodTracker

class FoodTrackerTests: XCTestCase {
    
    // MARK: FoodTracker Tests
    // Tests to confirm that the Meal initializer returns when no name or a negative rating is provided.
    func testMealInitialization() {
        // Success case
        let potentialItem = Meal(name: "Newest meal", photo: nil, rating: 5)
        XCTAssertNotNil(potentialItem)
        
        // Bad name
        let noName = Meal(name: "", photo: nil, rating: 5)
        XCTAssertNil(noName)
        
        // Bad rating
        let badRating = Meal(name: "Newest meal", photo: nil, rating: -1)
        XCTAssertNil(badRating)
    }
}
