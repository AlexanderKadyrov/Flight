//
//  FlightController.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation

class FlightController {
    
    func rndItems() -> [FlightProtocol] {
        //from 10 to 100 - rnd
        var items: [FlightProtocol] = []
        let itemsCount = Int.random(in: 10..<101)
        let flights = [listNotice(), listEvent(), listMove()]
        for _ in 1...itemsCount {
            if let flight = flights.randomElement(), let element = flight.randomElement() {
                items.append(element)
            }
        }
        return items
    }
    
    private func listNotice() -> [FlightProtocol] {
        do {
            let data = try Data.resource(name: "seeder_notice")
            return try JSONDecoder.decode(type: [Notice].self, data: data, dateFormat: "dd.MM.yyyy")
        } catch {
            return []
        }
    }
    
    private func listEvent() -> [FlightProtocol] {
        do {
            let data = try Data.resource(name: "seeder_event")
            return try JSONDecoder.decode(type: [Event].self, data: data, dateFormat: "dd-MM-yyyy HH:mm:ss")
        } catch {
            return []
        }
    }
    
    private func listMove() -> [FlightProtocol] {
        do {
            let data = try Data.resource(name: "seeder_move")
            return try JSONDecoder.decode(type: [Move].self, data: data, dateFormat: nil)
        } catch {
            return []
        }
    }
}
