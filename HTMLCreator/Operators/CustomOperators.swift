//
//  CustomOperator.swift
//  HTMLCreator
//
//  Created by Vicentiu Petreaca on 10/02/2018.
//  Copyright © 2018 Vicentiu Petreaca. All rights reserved.
//

import Foundation

// MARK; - Attribute operators
infix operator =>
func => <A> (key: AttributeKey<A>, value: A) -> Attribute {
    return .init(key.key, "\(value)")
}
