//
//  FlightTabloidCellViewModelFactory.swift
//  Flight
//
//  Created by Alexander on 05.01.2024.
//  Copyright © 2024 Alexander Kadyrov. All rights reserved.
//

import Foundation

final class FlightTabloidCellViewModelFactory {
    
    private let flightController = FlightController()
    
    func sections(viewModel: FlightViewModel) -> [[FlightTabloidCellViewModel]] {
        let cellViewModels = flightController.rndItems()
            .map {
                let cellViewModel = FlightTabloidCellViewModel(model: $0)
                viewModel.didSelect(publisher: cellViewModel.didSelect.eraseToAnyPublisher())
                return cellViewModel
            }
        return [cellViewModels]
    }
}
