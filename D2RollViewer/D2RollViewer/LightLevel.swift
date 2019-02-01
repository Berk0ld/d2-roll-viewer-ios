//
//  LightLevel.swift
//  D2RollViewer
//
//  Created by amoskvin on 2/1/19.
//  Copyright © 2019 D2RollViewer. All rights reserved.
//

import Foundation

struct LightLevel {
    let value: UInt
    
    enum Error: Swift.Error {
        case aboveMaximum(value: UInt)
        case zero
    }
    
    init(_ value: UInt) throws {
        guard value > 0 else { throw Error.zero }
        guard value < 1000 else { throw Error.aboveMaximum(value: value) }
        
        self.value = value
    }
}
