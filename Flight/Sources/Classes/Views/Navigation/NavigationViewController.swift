//
//  NavigationViewController.swift
//  Flight
//
//  Created by Alexander on 21/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

class NavigationViewController: UINavigationController {
    
    required init?(coder aDecoder: NSCoder) {
        super.init(coder: aDecoder)
    }
    
    init(controller: UIViewController, color: UIColor = .white) {
        super.init(rootViewController: controller)
        self.navigationBar.isTranslucent = false
        self.navigationBar.setBackgroundImage(UIImage(color: color), for: .default)
    }
    
    override var preferredStatusBarStyle: UIStatusBarStyle {
        return (self.topViewController?.preferredStatusBarStyle)!
    }
}
