//
//  Notice.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation

struct Notice {
    var flightDate: Date?
    var gate: String?
}

extension Notice: FlightProtocol {
    
    var title: String {
        return String(describing: type(of: self))
    }
    
    var subtitle: String {
        var values = [String]()
        if let thisFlightDate = flightDate {
            values.append(thisFlightDate.toString(.formatterDate))
        }
        if let thisGate = gate, !thisGate.isEmpty {
            values.append(thisGate)
        }
        return values.joined(separator: "\n")
    }
}
