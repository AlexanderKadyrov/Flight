//
//  FlightProtocol.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation
import UIKit

protocol FlightProtocol {
    var title: String { get }
    var subtitle: String { get }
    var path: Router.Path { get }
}
