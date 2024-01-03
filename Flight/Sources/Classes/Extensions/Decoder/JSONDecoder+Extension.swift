//
//  JSONDecoder+Extension.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation

extension JSONDecoder {
    static func decode<T>(type: T.Type, data: Data, dateFormat: String?) throws -> T where T : Decodable {
        let decoder = JSONDecoder()
        if let dateFormat = dateFormat {
            let dateFormatter = DateFormatter()
            dateFormatter.dateFormat = dateFormat
            decoder.dateDecodingStrategy = .formatted(dateFormatter)
        }
        return try decoder.decode(type, from: data)
    }
}
