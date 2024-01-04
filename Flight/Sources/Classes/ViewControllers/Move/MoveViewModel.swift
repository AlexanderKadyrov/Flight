//
//  MoveViewModel.swift
//  Flight
//
//  Created by Alexander on 05.01.2024.
//  Copyright © 2024 Alexander Kadyrov. All rights reserved.
//

import Foundation

final class MoveViewModel {
    
    let estimateTime: String
    let fromPlace: String
    let toPlace: String
    
    init(model: Move) {
        estimateTime = model.estimateTime.toString
        fromPlace = model.fromPlace
        toPlace = model.toPlace
    }
}
