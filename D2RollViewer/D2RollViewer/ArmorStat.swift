//
//  ArmorStat.swift
//  D2RollViewer
//
//  Created by amoskvin on 2/1/19.
//  Copyright © 2019 D2RollViewer. All rights reserved.
//

import Foundation

struct ArmorStat {
    let value: UInt
    
    enum Error: Swift.Error {
        case aboveMaximum(value: UInt)
    }
    
    init(_ value: UInt) throws {
        guard value <= 3 else { throw Error.aboveMaximum(value: value) }
        self.value = value
    }
}
