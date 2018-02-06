//
//  HTMLEnum.swift
//  HTMLCreator
//
//  Created by Vicentiu Petreaca on 06/02/2018.
//  Copyright © 2018 Vicentiu Petreaca. All rights reserved.
//

import Foundation

enum HTML {
    // MARK: - Simple text case
    case plainText(String)
    // MARK: - Base cases - those which do not have a child object
    case p(id: String?, class: String?, style: String?, value: String)
    case h1(id: String?, class: String?, style: String?, value: String)
    case h2(id: String?, class: String?, style: String?, value: String)
    case h3(id: String?, class: String?, style: String?, value: String)
    case h4(id: String?, class: String?, style: String?, value: String)
    case h5(id: String?, class: String?, style: String?, value: String)
    case h6(id: String?, class: String?, style: String?, value: String)
    case span(id: String?, class: String?, style: String?, value: String)
    
    //MARK: - Indirect cases - where element can have child components
    indirect case a(id: String?, class: String?, style: String?, href: String, value: HTML)
    
    static func parse(tree: HTML) -> () -> String {
        var htmlString: String = ""
        return {
            switch tree {
            case .plainText(let value):
                htmlString.append(value)
                return htmlString
            case .p(let id, let `class`, let style, let value):
                // Constructing the tag + it's non nil properties
                htmlString.append("<p" + stringByAppendingNonNilProperties(id: id, class: `class`, style: style, toString: htmlString) + ">")
                // Appending the value of the paragraph + the ending tag
                htmlString.append(value + "</p>")
                return htmlString
            case .h1(let id, let `class`, let style, let value):
                htmlString.append("<h1" + stringByAppendingNonNilProperties(id: id, class: `class`, style: style, toString: htmlString) + ">")
                htmlString.append(value + "</h1>")
                return htmlString
            case .h2(let id, let `class`, let style, let value):
                htmlString.append("<h2" + stringByAppendingNonNilProperties(id: id, class: `class`, style: style, toString: htmlString) + ">")
                htmlString.append(value + "</h2>")
                return htmlString
            case .h3(let id, let `class`, let style, let value):
                htmlString.append("<h3" + stringByAppendingNonNilProperties(id: id, class: `class`, style: style, toString: htmlString) + ">")
                htmlString.append(value + "</h3>")
                return htmlString
            case .h4(let id, let `class`, let style, let value):
                htmlString.append("<h4" + stringByAppendingNonNilProperties(id: id, class: `class`, style: style, toString: htmlString) + ">")
                htmlString.append(value + "</h4>")
                return htmlString
            case .h5(let id, let `class`, let style, let value):
                htmlString.append("<h5" + stringByAppendingNonNilProperties(id: id, class: `class`, style: style, toString: htmlString) + ">")
                htmlString.append(value + "</h5>")
                return htmlString
            case .h6(let id, let `class`, let style, let value):
                htmlString.append("<h6" + stringByAppendingNonNilProperties(id: id, class: `class`, style: style, toString: htmlString) + ">")
                htmlString.append(value + "</h6>")
                return htmlString
            case .span(let id, let `class`, let style, let value):
                htmlString.append("<span" + stringByAppendingNonNilProperties(id: id, class: `class`, style: style, toString: htmlString) + ">")
                htmlString.append(value + "</span>")
                return htmlString
            case .a(let id, let `class`, let style, let href, let value):
                // Analogue to the p element
                htmlString.append("<a" + stringByAppendingNonNilProperties(id: id, class: `class`, style: style, toString: htmlString) + " href=\"\(href)\">")
                let parsedValue = parse(tree: value)()
                htmlString.append(parsedValue + "</a>")
                return htmlString
            }
        }
    }
    
    private static func stringByAppendingNonNilProperties(id: String?, class: String?, style: String?, toString: String) -> String {
        // Declare mutable string in order to append to it the non nil
        var mutableString = toString
        if let id = id {
            mutableString.append(" id=\"\(id)\"")
        }
        if let `class` = `class` {
            mutableString.append(" class=\"\(`class`)\"")
        }
        if let style = style {
            mutableString.append(" style=\"\(style)\"")
        }
        return mutableString
    }
}


