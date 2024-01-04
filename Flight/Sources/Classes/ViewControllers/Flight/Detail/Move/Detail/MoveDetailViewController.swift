//
//  MoveDetailViewController.swift
//  Flight
//
//  Created by Alexander on 21/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

class MoveDetailViewController: BaseViewController, FlightDetailViewControllerProtocol {
    
    /*
    @IBOutlet private weak var viewContainerAirplaneTakeoff: UIView!
    @IBOutlet private weak var viewContainerAirplaneLanding: UIView!
    @IBOutlet private weak var labelFromPlace: UILabel!
    @IBOutlet private weak var labelToPlace: UILabel!
    @IBOutlet private weak var labelTime: UILabel!*/
    
    private let moveView: MoveView = {
        let view = MoveView()
        view.translatesAutoresizingMaskIntoConstraints = false
        return view
    }()
    
    private let fromPlaceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textAlignment = .left
        label.textColor = .white
        return label
    }()
    
    private let toPlaceLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 17, weight: .medium)
        label.textAlignment = .right
        label.textColor = .white
        return label
    }()
    
    var item: FlightProtocol? {
        didSet {
            guard let item = item as? Move else { return }
            fromPlaceLabel.text = item.fromPlace
            toPlaceLabel.text = item.toPlace
            //labelTime.text = item.estimateTime.toString
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureToolbar()
        configureViews()
    }
    
    private func configureToolbar() {
        setNavigationBar(text: "Move")
    }
    
    private func configureViews() {
        view.addSubview(moveView)
        view.addSubview(fromPlaceLabel)
        view.addSubview(toPlaceLabel)
        
        NSLayoutConstraint.activate([
            moveView.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            moveView.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -40),
            moveView.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            moveView.heightAnchor.constraint(equalToConstant: 76),
            
            fromPlaceLabel.bottomAnchor.constraint(equalTo: moveView.topAnchor, constant: -20),
            fromPlaceLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            fromPlaceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            fromPlaceLabel.heightAnchor.constraint(equalToConstant: 45),
            
            toPlaceLabel.topAnchor.constraint(equalTo: moveView.bottomAnchor, constant: 20),
            toPlaceLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -20),
            toPlaceLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 20),
            toPlaceLabel.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
}
