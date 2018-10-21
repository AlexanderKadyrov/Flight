//
//  NoticeDetailViewController.swift
//  Flight
//
//  Created by Alexander on 21/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import Foundation

class NoticeDetailViewController: BaseViewController {
    
    var item: Notice!
    
    //настраиваем стили и/или логику
    override func viewDidLoad() {
        super.viewDidLoad()
        makeToolbar()
    }
    
    private func makeToolbar() {
        setBarTitle(String(describing: type(of: item)))
    }
}
