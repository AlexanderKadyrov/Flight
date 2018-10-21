//
//  MoveDetailViewController.swift
//  Flight
//
//  Created by Alexander on 21/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

class MoveDetailViewController: FlightDetailViewController {
    
    
    @IBOutlet private weak var viewContainerAirplaneTakeoff: UIView!
    @IBOutlet private weak var viewContainerAirplaneLanding: UIView!
    
    //настраиваем стили и/или логику
    override func viewDidLoad() {
        super.viewDidLoad()
        makeToolbar()
        makeItems()
    }
    
    private func makeToolbar() {
        setBarTitle("Move")
    }
    
    private func makeItems() {
        viewContainerAirplaneTakeoff.layer.borderColor = UIColor.white.cgColor
        viewContainerAirplaneTakeoff.backgroundColor = .colorOnyx
        viewContainerAirplaneTakeoff.layer.cornerRadius = 38
        viewContainerAirplaneTakeoff.layer.borderWidth = 3
        viewContainerAirplaneLanding.layer.borderColor = UIColor.white.cgColor
        viewContainerAirplaneLanding.backgroundColor = .colorOnyx
        viewContainerAirplaneLanding.layer.cornerRadius = 38
        viewContainerAirplaneLanding.layer.borderWidth = 3
    }
}
