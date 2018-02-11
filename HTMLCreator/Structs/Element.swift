//
//  Element.swift
//  HTMLCreator
//
//  Created by Vicentiu Petreaca on 10/02/2018.
//  Copyright © 2018 Vicentiu Petreaca. All rights reserved.
//

import Foundation

struct Element {
    let name: String
    let attribs: [Attribute]
    let children: [Node]?
    
    init(_ name: String, _ attribs: [Attribute], _ children: [Node]?) {
        self.name = name
        self.attribs = attribs
        self.children = children
    }
}
