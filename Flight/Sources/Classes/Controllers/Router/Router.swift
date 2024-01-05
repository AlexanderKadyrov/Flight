//
//  Router.swift
//  Flight
//
//  Created by Alexander on 05.01.2024.
//  Copyright © 2024 Alexander Kadyrov. All rights reserved.
//

import Foundation
import UIKit

final class Router {
    
    enum Path {
        case notice
        case event
        case move
    }
    
    private weak var rootViewController: NavigationController?
    private let factory = RouterFactory()
    
    init(rootViewController: NavigationController) {
        self.rootViewController = rootViewController
    }
    
    func push(path: Path, model: FlightProtocol, animated: Bool) {
        let viewController = factory.viewController(path: path, model: model)
        rootViewController?.pushViewController(viewController, animated: animated)
    }
}
