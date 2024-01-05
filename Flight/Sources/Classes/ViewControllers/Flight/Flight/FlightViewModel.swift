//
//  FlightViewModel.swift
//  Flight
//
//  Created by Alexander on 04/01/2024.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import TabloidView
import Foundation
import Combine

final class FlightViewModel {
    
    private let factory = FlightTabloidCellViewModelFactory()
    private var subscriptions = Set<AnyCancellable>()
    
    let tabloidViewModel = TabloidViewModel()
    var router: Router?
    
    init() {
        fetchItems()
    }
    
    func fetchItems() {
        tabloidViewModel.sections = factory.sections(viewModel: self)
    }
    
    func didSelect(publisher: AnyPublisher<TabloidCellViewModel, Never>) {
        publisher
            .compactMap { $0 as? FlightTabloidCellViewModel }
            .sink { [weak self] cellViewModel in
                self?.router?.push(path: cellViewModel.model.path, model: cellViewModel.model, animated: true)
            }
            .store(in: &subscriptions)
    }
}
