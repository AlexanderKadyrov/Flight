//
//  NoticeViewController.swift
//  Flight
//
//  Created by Alexander on 21/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

class NoticeViewController: BaseViewController {
    
    private let gateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 51, weight: .medium)
        label.layer.borderColor = UIColor.colorBrilliantAzure.cgColor
        label.textAlignment = .center
        label.layer.cornerRadius = 70
        label.layer.borderWidth = 5
        label.textColor = .white
        return label
    }()
    
    private let flightDateLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 21)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    var viewModel: NoticeViewModel? {
        didSet {
            gateLabel.text = viewModel?.gate
            flightDateLabel.text = viewModel?.flightDate
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureToolbar()
        configureViews()
    }
    
    private func configureToolbar() {
        setNavigationBar(text: "Notice")
    }
    
    private func configureViews() {
        view.addSubview(gateLabel)
        view.addSubview(flightDateLabel)
        
        NSLayoutConstraint.activate([
            gateLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -64),
            gateLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            gateLabel.heightAnchor.constraint(equalToConstant: 140),
            gateLabel.widthAnchor.constraint(equalToConstant: 140),
            
            flightDateLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            flightDateLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            flightDateLabel.topAnchor.constraint(equalTo: gateLabel.bottomAnchor, constant: 8),
            flightDateLabel.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
}
