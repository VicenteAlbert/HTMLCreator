//
//  Node+Ext.swift
//  HTMLCreator
//
//  Created by Vicentiu Petreaca on 10/02/2018.
//  Copyright © 2018 Vicentiu Petreaca. All rights reserved.
//

import Foundation
extension Node: ExpressibleByStringLiteral {
    init(stringLiteral value: String) {
        self = .text(value)
    }
}
