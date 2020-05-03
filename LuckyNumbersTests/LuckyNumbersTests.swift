//
//  LuckyNumbersTests.swift
//  LuckyNumbersTests
//
//  Created by Gulya Boiko on 4/30/20.
//  Copyright © 2020 com.appres. All rights reserved.
//

import XCTest
@testable import LuckyNumbers
import AlgoTester

final class LuckyNumbersTests: XCTestCase {
    
    func test() {
        let lackyNumbers = LuckyNumbers(composition: Composition())
        let sut = Tester(task: lackyNumbers, bundleID: "com.gripp.LuckyNumbers")
        sut.runTests()
    }

}
