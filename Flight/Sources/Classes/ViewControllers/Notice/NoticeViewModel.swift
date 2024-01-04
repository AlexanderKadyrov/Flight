//
//  NoticeViewModel.swift
//  Flight
//
//  Created by Alexander on 04.01.2024.
//  Copyright © 2024 Alexander Kadyrov. All rights reserved.
//

import Foundation

final class NoticeViewModel: ViewModelProtocol {
    
    private(set) var flightDate: String?
    private(set) var gate: String?
    
    var model: Notice? {
        didSet {
            flightDate = model?.flightDate.toString(.formatterDate)
            gate = model?.gate
        }
    }
}
