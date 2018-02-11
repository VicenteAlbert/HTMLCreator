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
func => <A> (key: AttributedKey<A>, value: A) -> Attribute {
    return Attribute(key.key, "\(value)")
}

func => <A: RawRepresentable> (key: AttributedKey<A>, value: A) -> Attribute where A.RawValue == String {
    return Attribute(key.key, value.rawValue)
}
