//
//  Date+Extension.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation

extension Date {
    public func toString(_ formatter: DateFormatter) -> String {
        return formatter.string(from: self)
    }
}
