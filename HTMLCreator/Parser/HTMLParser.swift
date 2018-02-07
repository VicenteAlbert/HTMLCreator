//
//  HTMLParser.swift
//  HTMLCreator
//
//  Created by Vicentiu Petreaca on 07/02/2018.
//  Copyright © 2018 Vicentiu Petreaca. All rights reserved.
//

import Foundation

struct HTMLParser {
    static func parse(tree: HTML) -> () -> String {
        var htmlString: String = ""
        return {
            switch tree {
            case .plainText(let value):
                htmlString.append(value)
                return htmlString
            case .p(let properties, let value):
                // Constructing the tag + it's non nil properties
                htmlString.append("<p" + stringByAppendingNonNil(properties: properties, toString: htmlString) + ">")
                // Appending the value of the paragraph + the ending tag
                htmlString.append(value + "</p>")
                return htmlString
            case .h1(let properties, let value):
                htmlString.append("<h1" + stringByAppendingNonNil(properties: properties, toString: htmlString) + ">")
                htmlString.append(value + "</h1>")
                return htmlString
            case .h2(let properties, let value):
                htmlString.append("<h2" + stringByAppendingNonNil(properties: properties, toString: htmlString) + ">")
                htmlString.append(value + "</h2>")
                return htmlString
            case .h3(let properties, let value):
                htmlString.append("<h3" + stringByAppendingNonNil(properties: properties, toString: htmlString) + ">")
                htmlString.append(value + "</h3>")
                return htmlString
            case .h4(let properties, let value):
                htmlString.append("<h4" + stringByAppendingNonNil(properties: properties, toString: htmlString) + ">")
                htmlString.append(value + "</h4>")
                return htmlString
            case .h5(let properties, let value):
                htmlString.append("<h5" + stringByAppendingNonNil(properties: properties, toString: htmlString) + ">")
                htmlString.append(value + "</h5>")
                return htmlString
            case .h6(let properties, let value):
                htmlString.append("<h6" + stringByAppendingNonNil(properties: properties, toString: htmlString) + ">")
                htmlString.append(value + "</h6>")
                return htmlString
            case .span(let properties, let value):
                htmlString.append("<span" + stringByAppendingNonNil(properties: properties, toString: htmlString) + ">")
                htmlString.append(value + "</span>")
                return htmlString
            case .a(let properties, let href, let value):
                htmlString.append("<a" + stringByAppendingNonNil(properties: properties, toString: htmlString) + " href=\"\(href)\">")
                let parsedValue = parse(tree: value)()
                htmlString.append(parsedValue + "</a>")
                return htmlString
            case .html(let value):
                htmlString.append("<html>")
                let parsedValue = parse(tree: value)()
                htmlString.append(parsedValue + "</html>")
                return htmlString
            case .form(let properties, let action, let method, let target, let value):
                htmlString.append("<form" + stringByAppendingNonNil(properties: properties, toString: htmlString))
                htmlString.append(" action=\"\(action)\" method=\"\(method.rawValue)\" target=\"\(target.rawValue)\">")
                let parsedValue = parse(tree: value)()
                htmlString.append(parsedValue + "</form>")
                return htmlString
            case .body(let properties, let value):
                htmlString.append("<body" + stringByAppendingNonNil(properties: properties, toString: htmlString) + ">")
                let parsedValue = parse(tree: value)()
                htmlString.append(parsedValue + "</body>")
                return htmlString
            }
        }
    }
    
    private static func stringByAppendingNonNil(properties: HTML.CommonProperties, toString: String) -> String {
        // Declare mutable string in order to append to it the non nil
        var mutableString = toString
        if let id = properties.id {
            mutableString.append(" id=\"\(id)\"")
        }
        if let cssClass = properties.cssClass {
            mutableString.append(" class=\"\(cssClass)\"")
        }
        if let style = properties.style {
            mutableString.append(" style=\"\(style)\"")
        }
        return mutableString
    }
}
