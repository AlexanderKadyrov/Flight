//
//  NoticeDetailViewController.swift
//  Flight
//
//  Created by Alexander on 21/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

class NoticeDetailViewController: FlightDetailViewController {
    
    @IBOutlet private weak var labelTitle: UILabel!
    @IBOutlet private weak var labelSubtitle: UILabel!
    
    //настраиваем стили и/или логику
    override func viewDidLoad() {
        super.viewDidLoad()
        makeToolbar()
        makeItems()
        setData()
    }
    
    private func makeToolbar() {
        setBarTitle("Notice")
    }
    
    private func makeItems() {
        labelTitle.layer.borderColor = UIColor.colorBrilliantAzure.cgColor
        labelTitle.layer.cornerRadius = 70
        labelTitle.layer.borderWidth = 5
    }
    
    private func setData() {
        guard let thisItem = item as? Notice else { return }
        if let thisGate = thisItem.gate, !thisGate.isEmpty {
            labelTitle.text = thisGate
        }
        if let thisFlightDate = thisItem.flightDate {
            labelSubtitle.text = thisFlightDate.toString(.formatterDate)
        }
    }
}
