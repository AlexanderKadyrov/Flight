//
//  FlightDetailViewController.swift
//  Flight
//
//  Created by Alexander on 21/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

class FlightDetailViewController: BaseViewController {
    
    var item: FlightProtocol!
    
    //настраиваем стили и/или логику
    override func viewDidLoad() {
        super.viewDidLoad()
    }
    
    internal override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
