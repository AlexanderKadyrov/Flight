//
//  Date+Extension.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation

extension Date {
    
    static func with(value: String, format: String) -> Date {
        let dateFormatter = DateFormatter()
        dateFormatter.dateFormat = format
        guard let date = dateFormatter.date(from: value) else {
            fatalError("error date converting")
        }
        return date
    }
    
    func toString(_ formatter: DateFormatter) -> String {
        return formatter.string(from: self)
    }
}
