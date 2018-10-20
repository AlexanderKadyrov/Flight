//
//  Data+Extension.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation

extension Data {
    static func resource(_ name: String) -> Data? {
        if let url = Bundle.main.url(forResource: name, withExtension: "json") {
            do {
                let data = try Data(contentsOf: url, options: .mappedIfSafe)
                return data
            } catch {
                return nil
            }
        }
        return nil
    }
}
