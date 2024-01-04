//
//  MoveView.swift
//  Flight
//
//  Created by Alexander on 04.01.2024.
//  Copyright © 2024 Alexander Kadyrov. All rights reserved.
//

import Foundation
import UIKit

final class MoveView: UIView {
    
    private let takeoffAirplaneView: AirplaneView = {
        let view = AirplaneView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.style = .takeoff
        return view
    }()
    
    private let landingAirplaneView: AirplaneView = {
        let view = AirplaneView()
        view.translatesAutoresizingMaskIntoConstraints = false
        view.style = .landing
        return view
    }()
    
    private lazy var horizontalStackView: UIStackView = {
        let view = UIStackView(arrangedSubviews: [takeoffAirplaneView, UIView(), landingAirplaneView])
        view.translatesAutoresizingMaskIntoConstraints = false
        view.axis = .horizontal
        return view
    }()
    
    required init?(coder: NSCoder) {
        super.init(coder: coder)
        configureViews()
    }
    
    init() {
        super.init(frame: .zero)
        configureViews()
    }
    
    private func configureViews() {
        addSubview(horizontalStackView)
        
        NSLayoutConstraint.activate([
            horizontalStackView.trailingAnchor.constraint(equalTo: trailingAnchor),
            horizontalStackView.leadingAnchor.constraint(equalTo: leadingAnchor),
            horizontalStackView.bottomAnchor.constraint(equalTo: bottomAnchor),
            horizontalStackView.topAnchor.constraint(equalTo: topAnchor),
            
            takeoffAirplaneView.widthAnchor.constraint(equalToConstant: 76),
            landingAirplaneView.widthAnchor.constraint(equalToConstant: 76)
        ])
    }
}
