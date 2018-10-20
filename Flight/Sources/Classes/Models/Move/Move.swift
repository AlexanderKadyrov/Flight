//
//  Move.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation
import UIKit

class Move: Codable {
    
    var fromPlace: String?
    var toPlace: String?
    var estimateTime: TimeInterval?
    
    enum CodingKeys: String, CodingKey {
        case fromPlace
        case toPlace
        case estimateTime
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        fromPlace = try values.decode(String.self, forKey: .fromPlace)
        toPlace = try values.decode(String.self, forKey: .toPlace)
        let intEstimateTime = try values.decode(Int.self, forKey: .estimateTime)
        estimateTime = TimeInterval(intEstimateTime)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(fromPlace, forKey: .fromPlace)
        try container.encode(toPlace, forKey: .toPlace)
        try container.encode(estimateTime, forKey: .estimateTime)
    }
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
    
    var color: UIColor {
        return .colorLightRedOchre
    }
}
