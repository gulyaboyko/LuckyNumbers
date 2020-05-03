//
//  Compositable.swift
//  LuckyNumbers
//
//  Created by Gulya Boiko on 5/4/20.
//  Copyright © 2020 com.appres. All rights reserved.
//

import Foundation

protocol Compositable {
    func getCompositionCount(sum: Int, digits: Int) -> Int
}
