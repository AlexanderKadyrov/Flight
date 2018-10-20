//
//  JSONDecoder+Extension.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation

extension JSONDecoder {
    static func decode<T>(_ type: T.Type, from data: Data?, with dateFormat: String? = nil) -> T? where T : Decodable {
        do {
            if let thisData = data {
                let decoder = JSONDecoder()
                if let format = dateFormat {
                    let formatter = DateFormatter()
                    formatter.dateFormat = format
                    decoder.dateDecodingStrategy = .formatted(formatter)
                }
                return try decoder.decode(type, from: thisData)
            } else {
                return nil
            }
        } catch {
            return nil
        }
    }
}
