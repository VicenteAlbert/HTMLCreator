//
//  HelperFunctions.swift
//  HTMLCreator
//
//  Created by Vicentiu Petreaca on 10/02/2018.
//  Copyright © 2018 Vicentiu Petreaca. All rights reserved.
//

import Foundation

func node(_ name: String, _ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return Node.element(Element(name, attribs, children))
}

// MARK: - HTML Tags functions
// MARK: -

// MARK: Root components
func html(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("html", attribs, children)
}

func body(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("body", attribs, children)
}

func head(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("head", attribs, children)
}

func script(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("script", attribs, children)
}

func form(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("form", attribs, children)
}

// MARK: Headings
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

// MARK: Text
func p(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("p", attribs, children)
}

func span(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("span", attribs, children)
}

func a(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("a", attribs, children)
}

func b(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("b", attribs, children)
}

func strong(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("strong", attribs, children)
}

func em(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("em", attribs, children)
}

func mark(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("mark", attribs, children)
}

func blockquote(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("blockquote", attribs, children)
}

func q(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("q", attribs, children)
}

// MARK: Table
func table(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("table", attribs, children)
}

func tbody(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("tbody", attribs, children)
}

func thead(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("thead", attribs, children)
}

func tfoot(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("tfoot", attribs, children)
}

func tr(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("tr", attribs, children)
}

func th(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("th", attribs, nil)
}

func td(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("td", attribs, children)
}

func caption(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("caption", attribs, children)
}

func col(_ attribs: [Attribute] = []) -> Node {
    return node("col", attribs, nil)
}

// MARK: Misc
func br() -> Node {
    return node("br", [], nil)
}

func button(_ attribs: [Attribute] = [], _ children: [Node]? = nil) -> Node {
    return node("button", attribs, children)
}
