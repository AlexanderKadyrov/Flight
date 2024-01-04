//
//  EventViewController.swift
//  Flight
//
//  Created by Alexander on 21/10/2018.
//  Copyright © 2018 Alexander Kadyrov. All rights reserved.
//

import UIKit

final class EventViewController: BaseViewController {
    
    private let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderColor = UIColor.white.cgColor
        view.layer.cornerRadius = 140
        view.layer.borderWidth = 5
        return view
    }()
    
    private let logoImageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.masksToBounds = true
        view.layer.cornerRadius = 120
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    private let startTimeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    private let endTimeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 23, weight: .bold)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    var viewModel: EventViewModel? {
        didSet {
            setNavigationBar(text: viewModel?.name ?? "")
            logoImageView.image = viewModel?.logoImage
            startTimeLabel.text = viewModel?.startTime
            endTimeLabel.text = viewModel?.endTime
        }
    }
    
    override func viewDidLoad() {
        super.viewDidLoad()
        configureViews()
    }
    
    private func configureViews() {
        view.addSubview(containerView)
        view.addSubview(startTimeLabel)
        view.addSubview(endTimeLabel)
        containerView.addSubview(logoImageView)
        
        NSLayoutConstraint.activate([
            containerView.centerXAnchor.constraint(equalTo: view.centerXAnchor),
            containerView.centerYAnchor.constraint(equalTo: view.centerYAnchor),
            containerView.heightAnchor.constraint(equalToConstant: 280),
            containerView.widthAnchor.constraint(equalToConstant: 280),
            
            startTimeLabel.bottomAnchor.constraint(equalTo: containerView.topAnchor, constant: -16),
            startTimeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            startTimeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            startTimeLabel.heightAnchor.constraint(equalToConstant: 45),
            
            endTimeLabel.topAnchor.constraint(equalTo: containerView.bottomAnchor, constant: 16),
            endTimeLabel.trailingAnchor.constraint(equalTo: view.trailingAnchor, constant: -16),
            endTimeLabel.leadingAnchor.constraint(equalTo: view.leadingAnchor, constant: 16),
            endTimeLabel.heightAnchor.constraint(equalToConstant: 45),
            
            logoImageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            logoImageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            logoImageView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -20),
            logoImageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20)
        ])
    }
}
