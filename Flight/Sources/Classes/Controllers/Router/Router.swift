//
//  Router.swift
//  Flight
//
//  Created by Alexander on 05.01.2024.
//  Copyright © 2024 Alexander Kadyrov. All rights reserved.
//

import Foundation

final class Router {
    
    enum Path {
        case notice
        case event
        case move
    }
    
    private let factory = RouterFactory()
}
