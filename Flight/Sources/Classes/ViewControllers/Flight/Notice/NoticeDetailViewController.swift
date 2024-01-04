//
//  NoticeDetailViewController.swift
//  Flight
//
//  Created by Alexander on 21/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

class NoticeDetailViewController: BaseViewController, FlightDetailViewControllerProtocol {
    
    private let titleLabel: UILabel = {
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
    
    private let subtitleLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 21)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    var item: FlightProtocol? {
        didSet {
            guard let item = item as? Notice else { return }
            titleLabel.text = item.gate
            subtitleLabel.text = item.flightDate.toString(.formatterDate)
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
        view.addSubview(titleLabel)
        view.addSubview(subtitleLabel)
        
        NSLayoutConstraint.activate([
            titleLabel.centerYAnchor.constraint(equalTo: view.centerYAnchor, constant: -64),
            titleLabel.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            titleLabel.heightAnchor.constraint(equalToConstant: 140),
            titleLabel.widthAnchor.constraint(equalToConstant: 140),
            
            subtitleLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            subtitleLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            subtitleLabel.topAnchor.constraint(equalTo: titleLabel.bottomAnchor, constant: 8),
            subtitleLabel.heightAnchor.constraint(equalToConstant: 45)
        ])
    }
}
