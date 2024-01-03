//
//  BaseViewController.swift
//  Flight
//
//  Created by Alexander on 20/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

class BaseViewController: UIViewController {
    
    required init?(coder aDecoder: NSCoder) {
        fatalError("init(coder:) has not been implemented")
    }
    
    init() {
        super.init(nibName: String(describing: type(of: self)), bundle: nil)
    }
    
    //настраиваем стили и/или логику
    override func viewDidLoad() {
        super.viewDidLoad()
        view.backgroundColor = .colorOnyx
    }
    
    func setBarTitle(_ text: String) {
        let navigationTitleFont = UIFont.boldSystemFont(ofSize: 21)
        self.navigationController?.navigationBar.titleTextAttributes = [
            NSAttributedString.Key.font: navigationTitleFont,
            NSAttributedString.Key.foregroundColor: UIColor.white
        ]
        self.title = text
    }
    
    //настраиваем стиль statusBar
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return .lightContent
    }
}
