//
//  Event.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation

struct Event: Codable {
    
    enum Airline: String, Codable {
        case uralairlines
        case transaero
        case aeroflot
        case redwings
        case nordstar
        case pegasfly
        case openair
        case kolavia
        case pobeda
        case utair
        case s7
    }
    
    var startTime: Date
    var endTime: Date
    var airline: Airline
    var name: String
}

extension Event: FlightProtocol {
    
    var title: String {
        return String(describing: type(of: self))
    }
    
    var subtitle: String {
        let values: [String] = [
            name,
            startTime.toString(.formatterTime),
            endTime.toString(.formatterTime)
        ]
        return values.joined(separator: "\n")
    }
}
