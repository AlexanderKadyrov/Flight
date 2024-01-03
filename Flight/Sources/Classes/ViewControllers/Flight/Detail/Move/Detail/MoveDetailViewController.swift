//
//  MoveDetailViewController.swift
//  Flight
//
//  Created by Alexander on 21/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

class MoveDetailViewController: BaseViewController, FlightDetailViewControllerProtocol {
    
    @IBOutlet private weak var viewContainerAirplaneTakeoff: UIView!
    @IBOutlet private weak var viewContainerAirplaneLanding: UIView!
    @IBOutlet private weak var labelFromPlace: UILabel!
    @IBOutlet private weak var labelToPlace: UILabel!
    @IBOutlet private weak var labelTime: UILabel!
    
    var item: FlightProtocol?
    
    //настраиваем стили и/или логику
    override func viewDidLoad() {
        super.viewDidLoad()
        makeToolbar()
        makeItems()
        setData()
    }
    
    private func makeToolbar() {
        setNavigationBar(text: "Move")
    }
    
    private func makeItems() {
        viewContainerAirplaneTakeoff.layer.borderColor = UIColor.colorBrilliantAzure.cgColor
        viewContainerAirplaneTakeoff.backgroundColor = .colorOnyx
        viewContainerAirplaneTakeoff.layer.cornerRadius = 38
        viewContainerAirplaneTakeoff.layer.borderWidth = 3
        viewContainerAirplaneLanding.layer.borderColor = UIColor.colorBrilliantAzure.cgColor
        viewContainerAirplaneLanding.backgroundColor = .colorOnyx
        viewContainerAirplaneLanding.layer.cornerRadius = 38
        viewContainerAirplaneLanding.layer.borderWidth = 3
    }
    
    private func setData() {
        guard let item = item as? Move else { return }
        labelFromPlace.text = item.fromPlace
        labelToPlace.text = item.toPlace
        labelTime.text = item.estimateTime.toString
    }
}
