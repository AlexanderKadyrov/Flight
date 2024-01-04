//
//  ViewModelProtocol.swift
//  Flight
//
//  Created by Alexander on 05.01.2024.
//  Copyright © 2024 Alexander Kadyrov. All rights reserved.
//

import Foundation

protocol ViewModelProtocol {
    associatedtype M: FlightProtocol
    var model: M? { get set }
}
