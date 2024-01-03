//
//  Notice.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation
import UIKit

struct Notice: Codable {
    var flightDate: Date
    var gate: String
}

extension Notice: FlightProtocol {
    
    var title: String {
        return String(describing: type(of: self))
    }
    
    var subtitle: String {
        let values: [String] = [
            flightDate.toString(.formatterDate),
            gate
        ]
        return values.joined(separator: "\n")
    }
}
