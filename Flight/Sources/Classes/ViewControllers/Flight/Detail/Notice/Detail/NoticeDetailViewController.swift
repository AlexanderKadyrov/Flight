//
//  NoticeDetailViewController.swift
//  Flight
//
//  Created by Alexander on 21/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

class NoticeDetailViewController: BaseViewController, FlightDetailViewControllerProtocol {
    
    @IBOutlet private weak var labelTitle: UILabel!
    @IBOutlet private weak var labelSubtitle: UILabel!
    
    var item: FlightProtocol?
    
    override func viewDidLoad() {
        super.viewDidLoad()
        makeToolbar()
        makeItems()
        setData()
    }
    
    private func makeToolbar() {
        setNavigationBar(text: "Notice")
    }
    
    private func makeItems() {
        labelTitle.layer.borderColor = UIColor.colorBrilliantAzure.cgColor
        labelTitle.layer.cornerRadius = 70
        labelTitle.layer.borderWidth = 5
    }
    
    private func setData() {
        guard let item = item as? Notice else { return }
        labelTitle.text = item.gate
        labelSubtitle.text = item.flightDate.toString(.formatterDate)
    }
}
