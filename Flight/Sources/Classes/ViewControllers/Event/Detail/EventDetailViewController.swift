//
//  EventDetailViewController.swift
//  Flight
//
//  Created by Alexander on 21/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

class EventDetailViewController: FlightDetailViewController {
    
    @IBOutlet weak var viewContent: UIView!
    @IBOutlet weak var imageViewLogo: UIImageView!
    @IBOutlet private weak var labelStartTime: UILabel!
    @IBOutlet private weak var labelEndTime: UILabel!
    
    //настраиваем стили и/или логику
    override func viewDidLoad() {
        super.viewDidLoad()
        makeToolbar()
        makeItems()
        setData()
    }
    
    private func makeToolbar() {
        guard let thisItem = item as? Event else { return }
        setBarTitle(thisItem.name)
    }
    
    private func makeItems() {
        
        viewContent.layer.borderColor = UIColor.white.cgColor
        viewContent.layer.cornerRadius = 140
        viewContent.layer.borderWidth = 5
        viewContent.backgroundColor = .colorOnyx
        
        imageViewLogo.layer.masksToBounds = true
        imageViewLogo.layer.cornerRadius = 120
        imageViewLogo.backgroundColor = .colorOnyx
    }
    
    private func setData() {
        guard let thisItem = item as? Event else { return }
        let nameLogo = "icon_logo_" + thisItem.airline.rawValue
        imageViewLogo.image = UIImage(named: nameLogo)
        if let thisStartTime = thisItem.startTime {
            labelStartTime.text = "event_start_time_title".localized() + ": " + thisStartTime.toString(.formatterTime)
        }
        if let thisEndTime = thisItem.endTime {
            labelEndTime.text = "event_end_time_title".localized() + ": " + thisEndTime.toString(.formatterTime)
        }
    }
}
