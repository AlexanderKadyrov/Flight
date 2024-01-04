//
//  FlightViewModel.swift
//  Flight
//
//  Created by Alexander on 04/01/2024.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import TabloidView
import Foundation

final class FlightViewModel {
    
    private let flightController = FlightController()
    
    private var sections: [[FlightTabloidCellViewModel]] {
        let cellViewModels = flightController
            .rndItems()
            .map { FlightTabloidCellViewModel(model: $0) }
        return [cellViewModels]
    }
    
    let tabloidViewModel = TabloidViewModel()
    
    var router: Router?
    
    init() {
        fetchItems()
    }
    
    func fetchItems() {
        tabloidViewModel.sections = sections
    }
}
