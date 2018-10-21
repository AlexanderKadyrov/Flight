//
//  EventDetailViewController.swift
//  Flight
//
//  Created by Alexander on 21/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

class EventDetailViewController: BaseViewController {
    
    var item: Event!
    
    //настраиваем стили и/или логику
    override func viewDidLoad() {
        super.viewDidLoad()
        makeToolbar()
    }
    
    private func makeToolbar() {
        setBarTitle(String(describing: type(of: item)))
    }
}
