//
//  Notice.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation

struct Notice: Codable {
    let flightDate: Date
    let gate: String
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
    
    var path: Router.Path {
        return .notice
    }
}
