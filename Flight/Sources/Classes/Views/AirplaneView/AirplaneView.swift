//
//  AirplaneView.swift
//  Flight
//
//  Created by Alexander on 04.01.2024.
//  Copyright © 2024 Alexander Kadyrov. All rights reserved.
//

import Foundation
import UIKit

final class AirplaneView: UIView {
    
    enum Style: String {
        case takeoff
        case landing
    }
    
    private let containerView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.layer.borderColor = UIColor.colorBrilliantAzure.cgColor
        view.layer.borderWidth = 3
        return view
    }()
    
    private let imageView: UIImageView = {
        let view = UIImageView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.contentMode = .scaleAspectFit
        return view
    }()
    
    var style: Style = .takeoff {
        didSet {
            imageView.image = UIImage(named: "icon_airplane_\(style)")
        }
    }
    
    override func layoutSubviews() {
        super.layoutSubviews()
        containerView.layer.cornerRadius = frame.height / 2
    }
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureViews()
    }
    
    init() {
        super.init(frame: .zero)
        configureViews()
    }
    
    private func configureViews() {
        addSubview(containerView)
        containerView.addSubview(imageView)
        
        NSLayoutConstraint.activate([
            containerView.trailingAnchor.constraint(equalTo: trailingAnchor),
            containerView.leadingAnchor.constraint(equalTo: leadingAnchor),
            containerView.bottomAnchor.constraint(equalTo: bottomAnchor),
            containerView.topAnchor.constraint(equalTo: topAnchor),
            
            imageView.trailingAnchor.constraint(equalTo: containerView.trailingAnchor, constant: -20),
            imageView.leadingAnchor.constraint(equalTo: containerView.leadingAnchor, constant: 20),
            imageView.bottomAnchor.constraint(equalTo: containerView.bottomAnchor, constant: -20),
            imageView.topAnchor.constraint(equalTo: containerView.topAnchor, constant: 20)
        ])
    }
}
