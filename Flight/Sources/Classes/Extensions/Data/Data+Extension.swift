//
//  Data+Extension.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation

extension Data {
    
    private enum Errors: Error {
        case resourceNotFound
    }
    
    static func resource(name: String) throws -> Data {
        guard
            let url = Bundle.main.url(forResource: name, withExtension: "json")
        else {
            throw Errors.resourceNotFound
        }
        return try Data(contentsOf: url)
    }
}
