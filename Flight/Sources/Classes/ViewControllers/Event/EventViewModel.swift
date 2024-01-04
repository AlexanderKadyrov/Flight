//
//  EventViewModel.swift
//  Flight
//
//  Created by Alexander on 05.01.2024.
//  Copyright © 2024 Alexander Kadyrov. All rights reserved.
//

import Foundation
import UIKit

final class EventViewModel {
    
    let logoImage: UIImage?
    
    let startTime: String
    let endTime: String
    let name: String
    
    init(model: Event) {
        logoImage = UIImage(named: "icon_logo_\(model.airline.rawValue)")
        startTime = "event_start_time_title".localized() + ": " + model.startTime.toString(.formatterTime)
        endTime = "event_end_time_title".localized() + ": " + model.endTime.toString(.formatterTime)
        name = model.name
    }
}
