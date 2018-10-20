//
//  FlightListViewController.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

class FlightListViewController: BaseViewController {
    
    @IBOutlet private weak var tableView: UITableView!
    
    private lazy var flightController = FlightController()
    private var items: [FlightProtocol]!
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeToolbar()
        makeItems()
    }
    
    private func makeToolbar() {
        self.title = ""
    }
    
    private func makeItems() {
        items = flightController.rndItems()
    }
}
