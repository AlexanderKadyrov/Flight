//
//  Move.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation

class Move {
    var fromPlace: String?
    var toPlace: String?
    var estimateTime: TimeInterval?
}

extension Move: FlightProtocol {
    
    var title: String {
        return String(describing: type(of: self))
    }
    
    var subtitle: String {
        var values = [String]()
        if let thisFromPlace = fromPlace, !thisFromPlace.isEmpty {
            values.append(thisFromPlace)
        }
        if let thisToPlace = toPlace, !thisToPlace.isEmpty {
            values.append(thisToPlace)
        }
        if let thisEstimateTime = estimateTime {
            values.append(thisEstimateTime.toString)
        }
        return values.joined(separator: "\n")
    }
}
