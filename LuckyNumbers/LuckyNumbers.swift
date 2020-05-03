//
//  Test.swift
//  LuckyNumbers
//
//  Created by Gulya Boiko on 5/3/20.
//  Copyright © 2020 com.appres. All rights reserved.
//

import Foundation
import AlgoTester

final class LuckyNumbers {
    private let composition: Compositable
    
    init(composition: Compositable) {
        self.composition = composition
    }
    
    func getCountFor(digits: Int) -> Int {
        var result = 0
        for i in 0...digits * 9 {
            let summ = composition.getCompositionCount(sum: i, digits: digits)
            result += summ * summ
        }
        return result
    }
}

extension LuckyNumbers: Testable {
    func run(data: [String]) -> String {
        guard let int = Int(data[0]) else { return "" }
        let result = getCountFor(digits: int)
        return String(result)
    }
}
