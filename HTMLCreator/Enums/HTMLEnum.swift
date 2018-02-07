//
//  HTMLEnum.swift
//  HTMLCreator
//
//  Created by Vicentiu Petreaca on 06/02/2018.
//  Copyright © 2018 Vicentiu Petreaca. All rights reserved.
//

import Foundation

enum HTML {
    typealias CommonProperties = (id: String?, cssClass: String?, style: String?)
    // MARK: - Simple text case
    case plainText(String)
    
    // MARK: - Base cases - those which do not have a child object
    case p(CommonProperties, value: String)
    case h1(CommonProperties, value: String)
    case h2(CommonProperties, value: String)
    case h3(CommonProperties, value: String)
    case h4(CommonProperties, value: String)
    case h5(CommonProperties, value: String)
    case h6(CommonProperties, value: String)
    case span(CommonProperties, value: String)
    
    //MARK: - Indirect cases - where element can have child components
    indirect case a(CommonProperties, href: String, value: HTML)
    indirect case html(value: HTML)
    indirect case body(CommonProperties, value: HTML)
    indirect case form(CommonProperties, action: String, method: HTTPMethod, target: FormTarget, value: HTML)
}
