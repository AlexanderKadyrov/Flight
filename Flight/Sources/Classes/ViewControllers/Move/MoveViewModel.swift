//
//  MoveViewModel.swift
//  Flight
//
//  Created by Alexander on 05.01.2024.
//  Copyright © 2024 Alexander Kadyrov. All rights reserved.
//

import Foundation

final class MoveViewModel: ViewModelProtocol {
    
    private(set) var estimateTime: String?
    private(set) var fromPlace: String?
    private(set) var toPlace: String?
    
    var model: Move? {
        didSet {
            estimateTime = model?.estimateTime.toString
            fromPlace = model?.fromPlace
            toPlace = model?.toPlace
        }
    }
}
