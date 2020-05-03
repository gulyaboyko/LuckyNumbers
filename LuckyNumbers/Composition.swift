//
//  Composition.swift
//  LuckyNumbers
//
//  Created by Gulya Boiko on 5/4/20.
//  Copyright © 2020 com.appres. All rights reserved.
//

import Foundation

final class Composition: Compositable {
    private var results = [Key: Int]()
    private struct Key: Hashable {
        let sum: Int
        let digits: Int
    }
    
    func getCompositionCount(sum: Int, digits: Int) -> Int {
        if digits == 1 {
            return sum <= 9 ? 1 : 0
        }
        var result = 0
        for i in stride(from: 9, through: 0, by: -1) {
            if sum - i < 0 { continue }
            if let recursResult = getRecursiveResult(sum: sum - i, digits: digits - 1) {
                result += recursResult
            } else {
                let recursResult = getCompositionCount(sum: sum - i, digits: digits - 1)
                result += recursResult
                saveRecursiveResult(sum: sum - i, digits: digits - 1, result: recursResult)
            }
        }
        return result
    }
    
    private func getRecursiveResult(sum: Int, digits: Int) -> Int? {
        let key = Key(sum: sum, digits: digits)
        return results[key]
    }
    
    private func saveRecursiveResult(sum: Int, digits: Int, result: Int) {
        let key = Key(sum: sum, digits: digits)
        results[key] = result
    }
}
