//
//  EventDetailViewController.swift
//  Flight
//
//  Created by Alexander on 21/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

class EventDetailViewController: FlightDetailViewController {
    
    @IBOutlet private weak var labelTitle: UILabel!
    @IBOutlet private weak var labelSubtitle: UILabel!
    
    override var item: FlightProtocol! {
        didSet {
            guard let thisItem = item as? Event else { return }
        }
    }
    
    //настраиваем стили и/или логику
    override func viewDidLoad() {
        super.viewDidLoad()
        makeToolbar()
    }
    
    private func makeToolbar() {
        setBarTitle("Event")
    }
}
