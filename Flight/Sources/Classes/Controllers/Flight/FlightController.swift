//
//  FlightController.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation

class FlightController {
    public func rndItems() -> [FlightProtocol] {
        
        let dataNotice = Data.resource("seeder_notice")
        
        //let listNotice = try! JSONDecoder().decode([Notice].self, from: dataNotice)
        
        return []
    }
}
