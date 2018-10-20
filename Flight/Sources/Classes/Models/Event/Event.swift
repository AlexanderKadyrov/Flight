//
//  Event.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation

enum Airline: String {
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

class Event {
    var startTime: Date?
    var endTime: Date?
    var airline: Airline!
    var name: String!
}

extension Event: FlightProtocol {
    
    var title: String {
        return String(describing: type(of: self))
    }
    
    var subtitle: String {
        var values = [String]()
        if !name.isEmpty {
            values.append(name)
        }
        if let thisStartTime = startTime {
            values.append(thisStartTime.toString(.formatterTime))
        }
        if let thisEndTime = endTime {
            values.append(thisEndTime.toString(.formatterTime))
        }
        return values.joined(separator: "\n")
    }
}
