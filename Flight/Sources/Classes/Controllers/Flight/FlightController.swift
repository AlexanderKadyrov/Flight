//
//  FlightController.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation

fileprivate let dateFormat = "dd-MM-yyyy HH:mm:ss"

fileprivate let listNotice: [Notice] = {
    if let data = Data.resource("seeder_notice"), let list = JSONDecoder.decode([Notice].self, from: data, with: dateFormat) {
        return list
    }
    return []
}()

class FlightController {
    public func rndItems() -> [FlightProtocol] {
        return []
    }
}
