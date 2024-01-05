//
//  FlightTabloidCellViewModel.swift
//  Flight
//
//  Created by Alexander on 04.01.2024.
//  Copyright © 2024 Alexander Kadyrov. All rights reserved.
//

import TabloidView
import Foundation

final class FlightTabloidCellViewModel: TabloidCellViewModel {
    
    private enum Constants {
        static let cellIdentifier = "FlightTabloidCellView"
    }
    
    let model: FlightProtocol
    
    init(model: FlightProtocol) {
        self.model = model
        super.init(cellIdentifier: Constants.cellIdentifier)
    }
}
