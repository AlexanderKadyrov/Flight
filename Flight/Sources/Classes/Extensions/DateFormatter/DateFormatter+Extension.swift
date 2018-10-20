//
//  DateFormatter.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation

extension DateFormatter {
    
    public static var formatterDate: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "yyyy-MM-dd"
        return formatter
    }
    
    public static var formatterTime: DateFormatter {
        let formatter = DateFormatter()
        formatter.dateFormat = "HH:mm"
        return formatter
    }
}
