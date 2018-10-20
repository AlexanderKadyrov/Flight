//
//  Event.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation
import UIKit

fileprivate let dateFormatEvent = "dd-MM-yyyy HH:mm:ss"

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

class Event: Codable {
    
    var startTime: Date?
    var endTime: Date?
    var airline: Airline!
    var name: String!
    
    enum CodingKeys: String, CodingKey {
        case startTime
        case endTime
        case airline
        case name
    }
    
    required init(from decoder: Decoder) throws {
        let values = try decoder.container(keyedBy: CodingKeys.self)
        
        let stringStartTime = try values.decode(String.self, forKey: .startTime)
        startTime = Date.with(value: stringStartTime, format: dateFormatEvent)
        
        let stringEndTime = try values.decode(String.self, forKey: .endTime)
        endTime = Date.with(value: stringEndTime, format: dateFormatEvent)
        
        let stringAirline = try values.decode(String.self, forKey: .airline)
        airline = Airline(rawValue: stringAirline)
        
        name = try values.decode(String.self, forKey: .name)
    }
    
    func encode(to encoder: Encoder) throws {
        var container = encoder.container(keyedBy: CodingKeys.self)
        try container.encode(startTime, forKey: .startTime)
        try container.encode(endTime, forKey: .endTime)
        try container.encode(airline, forKey: .airline)
        try container.encode(name, forKey: .name)
    }
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
    
    var colorContainer: UIColor {
        return .colorSandyBrown
    }
    
    var colorText: UIColor {
        return .lightGray
    }
}
