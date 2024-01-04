//
//  FlightListTabloidCellViewModel.swift
//  Flight
//
//  Created by Alexander on 04.01.2024.
//  Copyright © 2024 Alexander Kadyrov. All rights reserved.
//

import TabloidView
import Foundation

final class FlightListTabloidCellViewModel: TabloidCellViewModel {
    
    private enum Constants {
        static let cellIdentifier = "FlightListTabloidCellView"
    }
    
    let model: FlightProtocol
    
    init(model: FlightProtocol) {
        self.model = model
        super.init(cellIdentifier: Constants.cellIdentifier)
    }
}
