//
//  RouterFactory.swift
//  Flight
//
//  Created by Alexander on 05.01.2024.
//  Copyright © 2024 Alexander Kadyrov. All rights reserved.
//

import Foundation
import UIKit

final class RouterFactory {
    
    enum Path {
        case notice
        case event
        case move
    }
    
    func viewController(path: Path, model: FlightProtocol) -> UIViewController {
        switch path {
        case .notice:
            return noticeViewController(model: model)
        case .event:
            return eventViewController(model: model)
        case .move:
            return moveViewController(model: model)
        }
    }
    
    private func noticeViewController(model: FlightProtocol) -> UIViewController {
        let viewController = NoticeViewController()
        let viewModel = NoticeViewModel(model: Notice(flightDate: Date(), gate: ""))
        viewModel.model = model as? Notice
        viewController.viewModel = viewModel
        return viewController
    }
    
    private func eventViewController(model: Event) -> UIViewController {
        let viewController = EventViewController()
        let viewModel = EventViewModel(model: model)
        viewController.viewModel = viewModel
        return viewController
    }
    
    private func moveViewController(model: Move) -> UIViewController {
        let viewController = MoveViewController()
        let viewModel = MoveViewModel(model: model)
        viewController.viewModel = viewModel
        return viewController
    }
}