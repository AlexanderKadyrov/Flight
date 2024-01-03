//
//  EventDetailViewController.swift
//  Flight
//
//  Created by Alexander on 21/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

class EventDetailViewController: BaseViewController, FlightDetailViewControllerProtocol {
    
    @IBOutlet weak var viewContent: UIView!
    @IBOutlet weak var imageViewLogo: UIImageView!
    @IBOutlet private weak var labelStartTime: UILabel!
    @IBOutlet private weak var labelEndTime: UILabel!
    
    var item: FlightProtocol?
    
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
        guard let item = item as? Event else { return }
        let nameLogo = "icon_logo_" + item.airline.rawValue
        imageViewLogo.image = UIImage(named: nameLogo)
        labelStartTime.text = "event_start_time_title".localized() + ": " + item.startTime.toString(.formatterTime)
        labelEndTime.text = "event_end_time_title".localized() + ": " + item.endTime.toString(.formatterTime)
    }
}
