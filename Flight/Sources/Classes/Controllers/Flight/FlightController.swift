//
//  FlightController.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation

fileprivate let listNotice: [FlightProtocol] = {
    if let data = Data.resource("seeder_notice"), let list = JSONDecoder.decode([Notice].self, from: data, with: "dd.MM.yyyy") {
        return list
    }
    return []
}()

fileprivate let listEvent: [FlightProtocol] = {
    if let data = Data.resource("seeder_event"), let list = JSONDecoder.decode([Event].self, from: data) {
        return list
    }
    return []
}()

fileprivate let listMove: [FlightProtocol] = {
    if let data = Data.resource("seeder_move"), let list = JSONDecoder.decode([Move].self, from: data) {
        return list
    }
    return []
}()

class FlightController {
    public func rndItems() -> [FlightProtocol] {
        //from 10 to 100 - rnd
        var items = [FlightProtocol]()
        let itemsCount = Int.random(in: 10..<101)
        let flights = [listNotice, listEvent, listMove]
        for _ in 1...itemsCount {
            if let flight = flights.randomElement(), let element = flight.randomElement() {
                items.append(element)
            }
        }
        return items
    }
}
