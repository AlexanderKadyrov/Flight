//
//  Move.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation

class Move: Codable {
    let fromPlace: String
    let toPlace: String
    let estimateTime: TimeInterval
}

extension Move: FlightProtocol {
    
    var title: String {
        return String(describing: type(of: self))
    }
    
    var subtitle: String {
        let values: [String] = [
            fromPlace,
            toPlace,
            estimateTime.toString
        ]
        return values.joined(separator: "\n")
    }
    
    var path: Router.Path {
        return .move
    }
}
