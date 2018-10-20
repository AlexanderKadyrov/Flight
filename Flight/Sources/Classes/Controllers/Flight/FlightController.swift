//
//  FlightController.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation

fileprivate let listNotice: [Notice] = {
    if let data = Data.resource("seeder_notice"), let list = JSONDecoder.decode([Notice].self, from: data, with: "dd.MM.yyyy") {
        return list
    }
    return []
}()

fileprivate let listEvent: [Event] = {
    if let data = Data.resource("seeder_event"), let list = JSONDecoder.decode([Event].self, from: data) {
        return list
    }
    return []
}()

fileprivate let listMove: [Move] = {
    if let data = Data.resource("seeder_move"), let list = JSONDecoder.decode([Move].self, from: data) {
        return list
    }
    return []
}()

class FlightController {
    public func rndItems() -> [FlightProtocol] {
        return []
    }
}
