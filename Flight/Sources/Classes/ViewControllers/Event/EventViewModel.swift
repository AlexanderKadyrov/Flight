//
//  EventViewModel.swift
//  Flight
//
//  Created by Alexander on 05.01.2024.
//  Copyright © 2024 Alexander Kadyrov. All rights reserved.
//

import Foundation
import UIKit

final class EventViewModel: ViewModelProtocol {
    
    private(set) var logoImage: UIImage?
    
    private(set) var startTime: String?
    private(set) var endTime: String?
    private(set) var name: String?
    
    var model: Event? {
        didSet {
            logoImage = configureLogoImage(airline: model?.airline)
            startTime = configureTime(components: ["event_start_time_title".localized(), model?.startTime.toString(.formatterTime)])
            endTime = configureTime(components: ["event_end_time_title".localized(), model?.endTime.toString(.formatterTime)])
            name = model?.name
        }
    }
    
    private func configureLogoImage(airline: Event.Airline?) -> UIImage? {
        guard let airline = airline else { return nil }
        return UIImage(named: "icon_logo_\(airline.rawValue)")
    }
    
    private func configureTime(components: [String?]) -> String? {
        return components
            .compactMap { $0 }
            .joined(separator: ": ")
    }
}
