//
//  NoticeViewModel.swift
//  Flight
//
//  Created by Alexander on 04.01.2024.
//  Copyright © 2024 Alexander Kadyrov. All rights reserved.
//

import Foundation

final class NoticeViewModel {
    
    let flightDate: String
    let gate: String
    
    init(model: Notice) {
        flightDate = model.flightDate.toString(.formatterDate)
        gate = model.gate
    }
}
