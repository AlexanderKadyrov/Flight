//
//  TimeView.swift
//  Flight
//
//  Created by Alexander on 04.01.2024.
//  Copyright © 2024 Alexander Kadyrov. All rights reserved.
//

import Foundation
import UIKit

final class EstimateTimeView: UIView {
    
    private let lineView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        return view
    }()
    
    private let circleView: UIView = {
        let view = UIView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.backgroundColor = .white
        view.layer.cornerRadius = 8
        return view
    }()
    
    private let estimateTimeLabel: UILabel = {
        let label = UILabel()
        label.translatesAutoresizingMaskIntoConstraints = false
        label.font = UIFont.systemFont(ofSize: 14, weight: .medium)
        label.textAlignment = .center
        label.textColor = .white
        return label
    }()
    
    var estimateTime: String? {
        set {
            estimateTimeLabel.text = newValue
        }
        get {
            return estimateTimeLabel.text
        }
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
        addSubview(lineView)
        addSubview(circleView)
        addSubview(estimateTimeLabel)
        
        NSLayoutConstraint.activate([
            lineView.trailingAnchor.constraint(equalTo: trailingAnchor),
            lineView.leadingAnchor.constraint(equalTo: leadingAnchor),
            lineView.centerYAnchor.constraint(equalTo: centerYAnchor),
            lineView.heightAnchor.constraint(equalToConstant: 4),
            
            circleView.centerXAnchor.constraint(equalTo: centerXAnchor),
            circleView.centerYAnchor.constraint(equalTo: centerYAnchor),
            circleView.heightAnchor.constraint(equalToConstant: 16),
            circleView.widthAnchor.constraint(equalToConstant: 16),
            
            estimateTimeLabel.topAnchor.constraint(equalTo: circleView.bottomAnchor, constant: 3),
            estimateTimeLabel.trailingAnchor.constraint(equalTo: trailingAnchor),
            estimateTimeLabel.leadingAnchor.constraint(equalTo: leadingAnchor),
            estimateTimeLabel.heightAnchor.constraint(equalToConstant: 21)
        ])
    }
}
