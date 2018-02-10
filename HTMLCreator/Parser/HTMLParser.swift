//
//  HTMLParser.swift
//  HTMLCreator
//
//  Created by Vicentiu Petreaca on 07/02/2018.
//  Copyright © 2018 Vicentiu Petreaca. All rights reserved.
//

import Foundation

struct HTMLParser {
    static func toString(_ node: Node) -> String {
        switch node {
        case let .element(e):
            return parse(element: e)
        case let .text(text):
            return text
        }
    }
    
    private static func parse(element: Element) -> String {
        // Define the open tag with it's corresponding attributes
        let openTag =
            "<\(element.name)"
                // If having attributes, we should append a space in order to have the
                // actual tag separated of the attributes, eg. <a *space* href="...."
                // otherwise if there are no attributes we do not need the extra space
            + (element.attribs.isEmpty ? "" : " ")
                // Parse all the attributes into a string
            + parse(attributes: element.attribs)
                // If the element has children, then we close the attributes and start
                // parsing the attributes
            + (element.children != nil ? ">" : "")
        
        // Start parsing the child elements
        let children = (element.children ?? [])
            .map(toString(_:))
            .joined()
        
        // Construct the closing tag based on the children existing or not, if they do
        // not exist, then we just end the tag, otherwise we construct the full tag
        // ending
        let closeTag = element.children == nil ? " />" : "</\(element.name)>"
        
        // Constructing final HTML string
        return openTag + children + closeTag
    }
    
    
    private static func parse(attributes: [Attribute]) -> String {
        return attributes
            .map { "\($0.key)=\"\($0.value)\"" }
            .joined(separator: " ")
    }
}
