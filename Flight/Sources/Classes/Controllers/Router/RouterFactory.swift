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
    
    func viewController(path: Router.Path, model: FlightProtocol) -> UIViewController {
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
        let viewModel = NoticeViewModel()
        viewModel.model = model as? Notice
        viewController.viewModel = viewModel
        return viewController
    }
    
    private func eventViewController(model: FlightProtocol) -> UIViewController {
        let viewController = EventViewController()
        let viewModel = EventViewModel()
        viewModel.model = model as? Event
        viewController.viewModel = viewModel
        return viewController
    }
    
    private func moveViewController(model: FlightProtocol) -> UIViewController {
        let viewController = MoveViewController()
        let viewModel = MoveViewModel()
        viewModel.model = model as? Move
        viewController.viewModel = viewModel
        return viewController
    }
}
