//
//  HelperFunctions.swift
//  HTMLCreator
//
//  Created by Vicentiu Petreaca on 10/02/2018.
//  Copyright © 2018 Vicentiu Petreaca. All rights reserved.
//

import Foundation

func node(_ name: String, _ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return .element(.init(name, attribs, children))
}

// MARK: - HTML Tags functions

//case p(CommonProperties, value: String)
//case h1(CommonProperties, value: String)
//case h2(CommonProperties, value: String)
//case h3(CommonProperties, value: String)
//case h4(CommonProperties, value: String)
//case h5(CommonProperties, value: String)
//case h6(CommonProperties, value: String)
//case span(CommonProperties, value: String)
//
////MARK: - Indirect cases - where element can have child components
//indirect case a(CommonProperties, href: String, value: HTML)
//indirect case html(value: HTML)
//indirect case body(CommonProperties, value: HTML)
//indirect case form(CommonProperties, action: String, method: HTTPMethod, target: FormTarget, value: HTML)

func p(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("p", attribs, children)
}

func h1(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("h1", attribs, children)
}
func h2(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("h2", attribs, children)
}
func h3(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("h3", attribs, children)
}
func h4(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("h4", attribs, children)
}
func h5(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("h5", attribs, children)
}
func h6(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("h6", attribs, children)
}
